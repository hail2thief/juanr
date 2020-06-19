rm(list=ls())

library(haven)
library(tidyverse)
library(janitor)



# office-sales prices
# read data
colony =
  read_dta("/Users/JuamnTellez/Dropbox/data/Guardado-office-selling/main_part1.dta") %>%
  select(-matches("obispado"), -starts_with("l"),
         -matches("obyear"))


# variable dictionary
labels = colony %>% map_chr(~attributes(.)$label)
var_dict = tibble(original = names(colony),
                  labels = labels)


# output
save(colony, file = "data/colony.rda")


for(ii in 1:nrow(var_dict))
{
  cat(paste0("\\item ", var_dict$original[ii], ". ", var_dict$labels[ii]), ".")
  cat("\n")

}


# office-sales on today
# read data
colony_long =
  read_dta("/Users/JuamnTellez/Dropbox/data/Guardado-office-selling/main_part2_1.dta")


labels = colony_long %>% map_chr(~attributes(.)$label)
var_dict = tibble(original = names(colony_long),
                  labels = labels)


# output
save(colony_long, file = "data/colony_long.rda")


for(ii in 1:nrow(var_dict))
{
  cat(paste0("\\item ", var_dict$original[ii], ". ", paste0(var_dict$labels[ii], ".")))
  cat("\n")

}


