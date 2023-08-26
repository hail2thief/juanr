# load libraries
library(tidyverse)
library(readxl)

# read data
parties = read_excel("/Users/juan/Dropbox/Mac/Downloads/parlgov.xlsx") |>
  select(country = country_name, party = party_name_english,
         family = family_name, left_right, state_market, liberty_authority,
         eu_anti_pro, party_id) |>
  filter(family != "to be coded")


# save data
save(parties, file = "data/parties.rda")


# read data
euro_elections = read_excel("/Users/juan/Dropbox/Mac/Downloads/parlgov.xlsx", sheet = 2) |>
  select(country = country_name, election = election_type,
         date = election_date,
         party = party_name_english, party_id,
         vote_share, seats, total_seats = seats_total)


# save data
save(euro_elections, file = "data/euro_elections.rda")
