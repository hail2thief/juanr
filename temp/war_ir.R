# libraries
library(tidyverse)
library(peacesciencer)




# trade
trade = create_stateyears() %>%
  add_cow_trade() %>%
  add_sdp_gdp() %>%
  add_contiguity() %>%
  add_minimum_distance() %>%
  add_igos() %>%
  select(country = statenme, year, imports, exports, gdp = wbgdp2011est,
         pop = wbpopest, land_borders = land, sea_borders = sea,
         min_cap_dist = minmindist, sum_igos = sum_igo_anytype) %>%
  mutate(gdp = exp(gdp),
         pop = exp(pop)) %>%
  filter(year > 1945)


# save
save(trade, file = "data/trade.rda")


# war
conflict = create_stateyears() %>%
  add_gwcode_to_cow() %>%
  add_ucdp_onsets() %>%
  mutate(onset = ifelse(sumonset1 > 0, 1, 0)) %>%
  add_contiguity() %>%
  add_cow_trade() %>%
  add_democracy() %>%
  add_nmc() %>%
  add_sdp_gdp() %>%
  select(country = statenme, year, onset, imports,
         exports, polyarchy = v2x_polyarchy,
         milex, milper, cinc, gdp = wbgdp2011est, pop = wbpopest) %>%
  mutate(gdp = exp(gdp),
         pop = exp(pop)) %>%
  filter(year > 1945)


save(conflict, file = "data/conflict.rda")

# leaders
leader = create_leaderyears() %>%
  add_lead() %>%
  add_lwuf() %>%
  mutate(country = str_remove(obsid, "\\-.*$")) %>%
  select(country, gwcode, leader, gender, year, yr_office = yrinoffice,
         age = leaderage, edu = leveledu,
         mil_service = milservice, combat, rebel, yrs_exp = yrsexper,
         phys_health = physhealth, mental_health = mentalhealth,
         will_force = theta2_mean, will_force_sd = theta2_sd) %>%
  # clean up education variable
  mutate(edu = case_when(edu == 0 ~ "Primary",
                         edu == 1 ~ "Secondary",
                         edu == 2 ~ "University",
                         edu == 3 ~ "Graduate"),
         edu = factor(edu, levels = c("Primary", "Secondary",
                                      "University", "Graduate")))

save(leader, file = "data/leader.rda")

# fearon
fearon = read_csv("temp/raw-data/fearon.csv") %>%
  select(country, year, onset, pop, polity2, gdp_cap,
         mtnest, oil, ef, numlang)


save(fearon, file = "data/fearon.rda")

