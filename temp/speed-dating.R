# load libraries
library(tidyverse)


# read data
df = read_csv("/Users/juan/Dropbox/teaching/davis/pol51/misc/speed-dating/Speed Dating Data.csv") |>
  select(match, int_corr, race, race_o, age, age_o, iid, gender, condition = condtn, wave, round) |>
  filter(wave <= 5 | wave >= 10)
