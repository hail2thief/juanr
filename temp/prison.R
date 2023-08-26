# libraries
library(tidyverse)


# read data
prison = read_csv("/Users/juan/Dropbox/Mac/Downloads/populations_states.csv") |>
  select(-data_or_inferred, -url, -incarcerated_unknown, -incarcerated_other) |>
  select(date, state, everything())

# save
save(prison, file = "data/prison.rda")
