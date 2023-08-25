library(tidyverse)


# data
df = read_csv("/Users/juan/Dropbox/teaching/davis/pol51/misc/speed-dating/Speed Dating Data.csv") %>%
  janitor::clean_names() |>
  select(iid, id, pid, match, sex = gender,
         condition = condtn, wave, num_people = round,
         date_order = order, int_corr, same_race = samerace,
         age, age_o, race, race_o,
         decision = dec, decision_o = dec_o, attract = attr, attract_o = attr_o,
         date_freq = date) |>
  # filter out the weird waves with 10 point scale
  filter(wave <= 5 | wave >= 10)


df |>
  filter(sex == 0) |>
  summarise(mean(match))


df |>
