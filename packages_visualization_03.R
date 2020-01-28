## remember to restart R here!

## make a barchart from the frequency table in data/add-on-packages-freqtable.csv

## read that csv into a data frame
## hint: readr::read_csv() or read.csv()
## idea: try using here::here() to create the file path

library(tidyverse)
library(here)
library(ggplot2)

freq_table <- read.csv(here("data/add-on-packages-freqtable.csv"))

## if you use ggplot2, code like this will work:
ggplot(apt_freqtable, aes(x = Built, y = n)) +
  geom_col()

built_barchart <- ggplot(freq_table, aes(x = Built, y = n)) +
  geom_col()

ggsave(here("figs/built-barchart.png"))

## write this barchart to figs/built-barchart.png
## if you use ggplot2, ggsave() will help
## idea: try using here::here() to create the file path


## YES overwrite the file that is there now
## that's old output from me (Jenny)
