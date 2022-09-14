library(tidyverse)

df = read_csv("temp/raw-data/owid-co2-data.csv")

climate = df %>%
  drop_na(iso_code) %>%
  select(country, year, population,
         gdp, co2, coal_co2,
         total_ghg, methane)

save(climate, file = "data/climate.rda")
