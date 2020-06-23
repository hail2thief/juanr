rm(list=ls())


library(tidyverse)
library(haven)


# read full merge data
df = read_dta("/Users/JuamnTellez/Dropbox/teaching/data/lapop/2004-2018 LAPOP AmericasBarometer Merge (v1.0FREE).dta")

# lapop data
keep = c("r_id", "pais", "ed", "jc10", "AOJ11", "q1",
         "AOJ12", "B18", "INFRAX",
         "e16", "aoj22",
         "q3c", "Q5B", "q10new_14", "ETID", "vic1ext", "VICBAR7") %>%
  tolower()

crime =
  df %>%
  mutate(pais = as_factor(pais)) %>%
  filter(year == 2014) %>%
  filter(!pais %in% c("Suriname", "Barbados", "Bahamas",
                      "Trinidad & Tobago", "Belize")) %>%
  mutate(r_id = 1:nrow(.)) %>%
  select(one_of(keep)) %>%
  mutate(jc10 = ifelse(jc10 == 1, 1, 0),
         vic1ext = ifelse(vic1ext == 1, 1, 0),
         vicbar7 = ifelse(vicbar7 == 1, 1, 0)) %>%
  mutate_at(vars(aoj11, aoj12, infrax, aoj22, q3c, q5b, etid, q1),
            ~as_factor(.)) %>%
  select(-r_id)


# save data
save(crime, file = "data/crime.rda")


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
  make_dictionary(df, vars = names(crime))


for(ii in 1:nrow(var_dict))
{
  cat(paste0("\\item ", var_dict$original[ii], ". ", var_dict$labels[ii]))
  cat("\n")

}
