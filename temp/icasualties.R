library(tidyverse)

# data
casual = read_csv("temp/raw-data/casualties.csv") %>%
  select(-state_pop_2010, -nationality) %>%
  mutate(source = factor(source))


# write out
save(casual, file = "data/casual.rda")
