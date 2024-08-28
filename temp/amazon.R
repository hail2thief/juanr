# load libraries
library(tidyverse)
library(here)
set.seed(1990)

# read data
purchases = read_csv("data-raw/amazon-purchases/amazon-purchases.csv") |>
  janitor::clean_names() |>
  select(order_date, price_per_unit = purchase_price_per_unit, quantity,
         shipping_address_state, category, survey_response_id) |>
  mutate(category = tolower(category))

survey = read_csv("data-raw/amazon-purchases/survey.csv") |>
  janitor::clean_names() |>
  select(survey_response_id, age = q_demos_age, hispanic = q_demos_hispanic,
         race = q_demos_race, education = q_demos_education,
         income = q_demos_income, gender = q_demos_gender,
         hh_size = q_amazon_use_hh_size,
         marijuana = q_substance_use_marijuana,
         alcohol = q_substance_use_alcohol) |>
  mutate(id = paste0("r", 1:n()))

fields = read_csv("data-raw/amazon-purchases/fields.csv") |>
  janitor::clean_names()


# merge survey and purchases
amazon = purchases |>
  left_join(survey, by = "survey_response_id") |>
  select(-survey_response_id) |>
  mutate(order_date = as.Date(order_date)) |>
  # shorten the education variable levels
  mutate(education = case_when(
    str_detect(education, "Bachelor's degree") ~ "Bachelor degree",
    str_detect(education, "Graduate or professional degree") ~ "Graduate degree",
    str_detect(education, "High school diploma or GED") ~ "High School",
    str_detect(education, "Some high school or less") ~ "Less than high school",
    TRUE ~ NA_character_
  )) |>
  # convert hispanic, alcohol, and marijuana to logical
  mutate(hispanic = hispanic == "Yes",
         alcohol = alcohol == "Yes",
         marijuana = marijuana == "Yes")


# pick a random subset of the data, stratified by id
pick = survey |>
  pull(id) |>
  sample(size = 2000)

amazon = amazon |>
  filter(id %in% pick) |>
  select(id, everything())

# save data
save(amazon, file = here("data", "amazon.rda"), compress = "xz")

