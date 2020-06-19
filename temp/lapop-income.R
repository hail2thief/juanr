rm(list=ls())

library(tidyverse)
library(janitor)
library(haven)

# read full merge data
df = read_dta("/Users/JuamnTellez/Dropbox/teaching/data/lapop/2004-2018 LAPOP AmericasBarometer Merge (v1.0FREE).dta")

# lapop data
keep = c("r_id", "pais", "ed", "q10new_18")

lap = 
  df %>% 
  filter(pais %in% c(4)) %>%
  mutate(pais = as_factor(pais)) %>% 
  filter(year == 2018) %>% 
  mutate(r_id = 1:nrow(.)) %>% 
  select(one_of(keep), r1:r16, r18, 
         ur,
         q14, fs2, fs8, wf1) %>% 
  mutate_at(vars(q14,fs2:wf1), list(~ifelse(. == 1, 1, 0))) %>% 
  mutate_at(vars(ur), list(~as_factor(.)))



# save data
write_csv(lap, "static/files/lapop-income.csv")


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
  make_dictionary(df, vars = names(lap)) %>% 
  datapasta::dpasta()
