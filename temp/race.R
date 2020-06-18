rm(list=ls())

library(tidyverse)
library(haven)
library(datapasta)

# read data
df = read_dta("/Users/JuamnTellez/Dropbox/teaching/data/lapop/2004-2018 LAPOP AmericasBarometer Merge (v1.0FREE).dta")


# clean data, keep 2014 where most data available, remove non-LAC countries,
# pick relevant variables
race =
  df %>%
  mutate(pais = as_factor(pais)) %>%
  filter(pais %in% c("Colombia",
                     "Mexico",
                     "Guatemala",
                     "Brazil",
                     "Dominican Republic")) %>%
  filter(year == 2014) %>%
  mutate(r_id = 1:nrow(.)) %>%
  select(r_id,
         pais,
         q2,
         etid,
         ed,
         d5,
         d6,
         q10new_14,
         colorr) %>%
  mutate(etid = as_factor(etid))


# save data
save(race, file = here("data", "race.rda"))



# get dictionary
make_dictionary = function(data, vars)
{
  # subset to variables you want
  subset = select(data, one_of(vars))

  # extract labels
  labels = subset %>% map_chr(~attributes(.)$label)
  var_dict = tibble(original = names(subset),
                    labels = labels)
  return(var_dict)
}

# get library
var_dict =
  make_dictionary(df, vars = c("pais",
                               "q2",
                               "etid",
                               "ed",
                               "colorr",
                               "q10new_14",
                               "d5",
                               "d6"))


for(ii in 1:nrow(var_dict))
{
  cat(paste0("\\item ", var_dict$original[ii], ". ", var_dict$labels[ii]))
  cat("\n")

}

