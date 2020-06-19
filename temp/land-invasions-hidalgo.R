rm(list=ls())

library(tidyverse)
library(haven)

invasions =
  read_dta("/Users/JuamnTellez/Dropbox/teaching/data/brazil land invasions/replication_cs_5-5-10.dta") %>%
  select(municipio, ext_pov, landgini, occs,
         logarea, logfam, logpop)



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
  make_dictionary(invasions, vars = names(invasions)[2:7])


for(ii in 1:nrow(var_dict))
{
  cat(paste0("\\item ", var_dict$original[ii], ". ", var_dict$labels[ii]))
  cat("\n")

}

# save data
save(invasions, file = "data/invasions.rda")
