# libraries
library(tidyverse)
library(haven)



# data
df = read_dta("temp/raw-data/KK_replication_data_h.dta")


# clean data
vietnam = df %>%
  select(hamlet_id = usid, month,
         selective_terror = sterror1,
         control = mod3a_1,
         bombs = bombed, urban = urbrur1,
         pop = lnhpop,
         border = ln_dist,
         dev_index = score, buddhist,
         vietnamese) %>%
  mutate(pop = exp(pop),
         border = exp(border),
         control = case_when(control == 1 ~ "Full state",
                             control == 2 ~ "Partial state",
                             control == 3 ~ "Contested",
                             control == 4 ~ "Partial rebel",
                             control == 5 ~ "Full rebel"),
         control = factor(control, levels = c("Full state",
                                              "Partial state",
                                              "Contested",
                                              "Partial rebel",
                                              "Full rebel")),
         month = haven::as_factor(month))


# output
save(vietnam, file = "data/vietnam.rda")



# dictionary
tribble(~Variable, ~Description,
        "hamlet_id", "9-digit HES identifier",
        "month", "Month",
        "selective_terror", "Did Vietcong use selective violence?",
        "control", "Who controlled hamlet?\n(1 = full state, 2 = partial state, 3 = contested, 4 = partial rebel, 5 = full rebel)",
        "bombed", "How many bombing sorties in hamlet?",
        "urban", "Is hamlet mostly urban?\n(1 = yes, 0 = no)",
        "pop", "Hamlet population",
        "border", "Distance to closest international border",
        "dev_index", "Development index (low to high)",
        "buddhist", "Predominantly Buddhist hamlet?\n(1 = yes, 0 = no)",
        "vietnamese", "Predominantly Vietnamese hamlet?\n(1 = yes, 0 = no)")
