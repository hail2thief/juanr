library(tidyverse)
library(arrow)
library(here)

ice_detention <- read_feather("data-raw/facilities-daily-population-latest.feather") |>
  select(-source_state, -date_state, -detention_facility_code) |>
  janitor::clean_names()

save(ice_detention, file = here("data", "ice_detention.rda"), compress = "xz")
