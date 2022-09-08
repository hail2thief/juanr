library(tidyverse)


bot =
  read_rds("/Users/juan/Dropbox/websites/quantpol/static/files/voter-bot.rds") %>%
  select(state = inputstate, sex = gender, everything())


save(bot, file = "data/bot.rda")
