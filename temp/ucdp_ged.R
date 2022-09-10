library(tidyverse)
library(lubridate)

# read data
df = vroom::vroom("temp/raw-data/ged211.csv")


ged = df %>%
  filter(where_prec %in% c(1, 2)) %>%
  mutate(month = month(ymd(date_start)),
         year = year(ymd(date_start)),
         day = day(ymd(date_start))) %>%
  select(id, year, month, day,
         country, type_of_violence, conflict_name,
         side_a, side_b,
         latitude, longitude,
         low_death = low,
         best_death = best,
         high_death = high) %>%
  mutate(type_of_violence = case_when(type_of_violence == 1 ~ "State-based violence",
                                      type_of_violence == 2 ~ "Non-state violence",
                                      type_of_violence == 3 ~ "One-sided violence")) %>%
  drop_na()


# save
save(ged, file = "data/ged.rda")
