# libraries
library(tidyverse)
library(wooldridge)
library(here)

# affairs dataset
data("affairs")

affairs = affairs |>
  select(male, age, years_married = yrsmarr,
         kids, relig, educ, occup, marriage_rating = ratemarr,
         n_affairs = naffairs) |>
  tibble()


# save data
save(affairs, file = here("data", "affairs.rda"), compress = "xz")

