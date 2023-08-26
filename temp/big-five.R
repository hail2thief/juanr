# load libraries
library(tidyverse)


# read data
big_five = read_csv("/Users/juan/Dropbox/Mac/Downloads/big_five_scores.csv") |>
  select(-case_id) |>
  mutate(sex = ifelse(sex == 1, "male", "female"))


# save data
save(big_five, file = "data/big_five.rda")
