# libraries
library(tidyverse)


# data
coups = read_csv("/Users/juan/Dropbox/Mac/Downloads/DOI-10-13012-b2idb-9651987_v6/Coup data 2.1.2.csv") |>
  select(-cowcode, -coup_id, -dissident, -rebel, -palace, -other,
         -resign)


# save
save(coups, file = "data/coups.rda")
