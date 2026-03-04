library(tidyverse)
library(arrow)
library(here)

ice_arrests <- read_feather("data-raw/arrests-latest.feather") |>
  filter(!duplicate_likely) |>
  select(
    -file_original, -sheet_original, -row_original,
    -unique_identifier, -duplicate_likely, -apprehension_date_time
  ) |>
  janitor::clean_names() |>
  # coerce arrow ALTVEC types to plain R vectors before saving;
  # without this, the .rda silently depends on the arrow package
  as.data.frame() |>
  as_tibble()

save(ice_arrests, file = here("data", "ice_arrests.rda"), compress = "xz")
