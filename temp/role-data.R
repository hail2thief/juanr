# load libraries
library(tidyverse)
library(haven)


# read data
rebel_leader = read_dta("/Users/juan/Dropbox/Mac/Downloads/ROLE 1.0 Data Release JPR SU21 Final (1)/ROLE 1.0 Data Release JPR SU21 Final.dta") |>
  select(leadercode, name = fullbirthname, state = stname, conflict = confdesc,
         group = groupname, gender, birth_year = yearofbirth, dead,
         birth_place = placeofbirth, education, study_area = areaofstudy,
         entry_method = entrymethod, western = educwest, married, children, religion,
         elite_family = family, occupation, train_abroad = milab,
         death_cause = deathcause) |>
  # cahnge to factor
  mutate(across(where(is.labelled), as_factor)) |>
  # since data is leader-year, grab just the leaders first year in the data
  group_by(leadercode) |>
  slice_head(n = 1)


# variable dictionary
labels = rebel_leader %>% map_chr(~attributes(.)$label)
var_dict = tibble(original = names(rebel_leader),
                  labels = labels)


# spit out for easy codebook
for(ii in 1:nrow(var_dict))
{
  cat(paste0("\\item ", var_dict$original[ii], ". ", var_dict$labels[ii]), ".", sep = "")
  cat("\n")

}


# save
save(rebel_leader, file = "data/rebel_leader.rda")
