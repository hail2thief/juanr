# load libraries
library(tidyverse)
library(here)

# read and clean data
migrant_children = read_csv("data-raw/hhs-child-migrant-data.csv") |>
  janitor::clean_names() |>
  # make date variables dates
  mutate(across(contains("date"), lubridate::mdy)) |>
  # recode sponsor categories
  mutate(sponsor_category = case_when(
    sponsor_category == 1 ~ "Parent or guardian",
    sponsor_category == 2 ~ "Immediate relative",
    sponsor_category == 3 ~ "Distant relative or unrelated adult",
    # I did this part myself
    relationship_of_sponsor == "Family Friend" ~ "Distant relative or unrelated adult",
    TRUE ~ NA_character_
  ))

zips = read_csv("https://raw.githubusercontent.com/scpike/us-state-county-zip/master/geo-data.csv") |>
  select(state_abbr, sponsor_zipcode = zipcode, county, city) |>
  distinct(sponsor_zipcode, .keep_all = TRUE)


migrant_children = left_join(migrant_children, zips) |>
  select(-sponsor_zipcode, -id)


# save data
save(migrant_children, file = here("data", "migrant_children.rda"), compress = "xz")

