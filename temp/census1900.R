# libraries
library(tidyverse)
library(haven)

# data
census =
  read_csv("/Users/juan/Dropbox/Mac/Documents/GitHub/data/1900-census-immigrant-city/1900-census-immigrant-pop-metro.csv") |>
  janitor::clean_names() |>
  select(-error)


# write out
save(census, file = "data/census.rda")
