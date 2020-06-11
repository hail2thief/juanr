rm(list=ls())

library(haven)
library(tidyverse)
library(janitor)



# office-sales prices
# read data
peru_office =
  read_dta("/Users/JuamnTellez/Dropbox/data/Guardado-office-selling/main_part1.dta") %>%
  select(-matches("obispado"), -starts_with("l"),
         -matches("obyear"))


# variable dictionary
labels = peru_office %>% map_chr(~attributes(.)$label)
var_dict = tibble(original = names(peru_office),
                  labels = labels)


# output
save(peru_office, file = "data/peru_office.rda")


for(ii in 1:nrow(var_dict))
{
  cat(paste0("\\item ", var_dict$original[ii], ". ", var_dict$labels[ii]), ".")
  cat("\n")

}


# office-sales on today
# read data
peru_office_dev =
  read_dta("/Users/JuamnTellez/Dropbox/data/Guardado-office-selling/main_part2_1.dta")


labels = peru_office_dev %>% map_chr(~attributes(.)$label)
var_dict = tibble(original = names(peru_office_dev),
                  labels = labels)


# output
save(peru_office_dev, file = "data/peru_office_dev.rda")


for(ii in 1:nrow(var_dict))
{
  cat(paste0("\\item ", var_dict$original[ii], ". ", paste0(var_dict$labels[ii], ".")))
  cat("\n")

}


