library(tidyverse)
library(arrow)
library(here)

ice_detention <- read_feather("data-raw/facilities-daily-population-latest.feather") |>
  select(-source_state, -date_state, -detention_facility_code) |>
  janitor::clean_names() |>
  # coerce arrow ALTVEC types to plain R vectors before saving;
  # without this, the .rda silently depends on the arrow package
  as.data.frame() |>
  as_tibble()

save(ice_detention, file = here("data", "ice_detention.rda"), compress = "xz")
