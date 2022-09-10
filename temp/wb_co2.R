library(tidyverse)

df = read_csv("temp/raw-data/owid-co2-data.csv")

emission = df %>%
  drop_na(iso_code) %>%
  select(country, year, population, gdp, co2, coal_co2,
         cumulative_co2, methane)

save(emission, file = "data/emission.rda")
