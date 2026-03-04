library(tidyverse)
library(here)

evictions = read_csv("data-raw/Evictions_20240925.csv", show_col_types = FALSE) |>
  transmute(
    date = as.Date(`Executed Date`, format = "%m/%d/%Y"),
    borough = str_to_title(BOROUGH),
    neighborhood = NTA,
    zip = as.character(as.integer(`Eviction Postcode`)),
    type = `Residential/Commercial`,
    lat = Latitude,
    lon = Longitude
  )

save(evictions, file = here("data", "evictions.rda"), compress = "xz")
