# libraries
library(tidyverse)
library(haven)


# data
df_2017 = read_dta("/Users/juan/Dropbox/teaching/davis/pol51/data/VOTER_Survey_July17_Release1-dta.dta")



# thermometer
therm = df_2017 %>%
  select(birth_year = birthyr_baseline, sex = gender_baseline,
         race = race_baseline, party_id = pid3_2017,
         educ = educ_2017,
         ft_black_2017:ft_rep_2017) %>%
  mutate(sex = as_factor(sex),
         race = as_factor(race),
         educ = as_factor(educ),
         party_id = as_factor(party_id)) %>%
  mutate(across(c(ft_black_2017:ft_rep_2017),
                ~ifelse(. > 100, NA, .))) %>%
  drop_na(sex, race, party_id, educ)

names(therm) = str_remove(names(therm), pattern = "_2017.*")

# output
save(therm, file = "data/therm.rda")


