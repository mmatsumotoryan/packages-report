## deja vu from earlier!

## create a data frame of your installed packages
## hint: installed.packages() is the function you need

library(here)
library(tidyverse)

packages <- as.data.frame(installed.packages())

# packages %>%
#   select(Package, LibPath, Version, Priority, Built) -> packages_subset

## optional: select just some of the variables, such as
##   * Package
##   * LibPath
##   * Version
##   * Priority
##   * Built

## write this data frame to data/installed-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

packages %>%
  select(Package, LibPath, Version, Priority, Built) %>%
  write.csv(., file = here("data", "installed-packages.csv"))

#write.csv(packages_subset, file = here("data", "installed-packages.csv"))

## YES overwrite the file that is there now (or delete it first)
## that's a old result from me (Jenny)
## it an example of what yours should look like and where it should go
