library(tidyverse)


# data
df = read_csv("/Users/juan/Dropbox/teaching/davis/pol51/data/dime_cong_elections_current.csv") %>%
  janitor::clean_names()

# select and clean up variables
bonica = df %>%
  filter(cycle %in% c(2012, 2016, 2018)) %>%
  select(cycle, name, party, dwnom1,
         state, district, seat, incumbent = incum_chall,
         gender = cand_gender, num_distinct_donors:total_disbursements,
         -unitemized, -total_pac_contribs, -total_indiv_contrib) %>%
  mutate(name = stringi::stri_trans_totitle(name),
         seat = str_replace_all(seat, ".*:", ""),
         incumbent = case_when(incumbent == "C" ~ "challenger",
                               incumbent == "O" ~ "open seat",
                               incumbent == "I" ~ "incumbent",
                                 TRUE ~ NA_character_))


# output data
save(bonica, file = "data/bonica.rda")
