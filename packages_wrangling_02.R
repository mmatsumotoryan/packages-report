## remember to restart R here! #cmd-shift-f10

## create a data frame by reading from data/installed-packages.csv
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

library(tidyverse)
library(here)

packages <- read.csv(here("data/installed-packages.csv"))

packages %>%
  filter(is.na(Priority)) %>%
  select(Package, Built) -> packages_no_br

## filter out the base and recommended packages
## keep the variables Package and Built
## if you use dplyr, code like this will work:
apt <- ipt %>%
  filter(is.na(Priority)) %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

write.csv(packages_no_br, file = here("data/add-on-packages.csv"))

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
apt_freqtable <- apt %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

packages_no_br %>%
  count(Built) %>%
  mutate(prop = n/sum(n)) -> packages_freqtable

## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

write.csv(packages_freqtable, file = here("data/add-on-packages-freqtable.csv"))

## YES overwrite the files that are there now
## they are old output from me (Jenny)
## they are just examples
