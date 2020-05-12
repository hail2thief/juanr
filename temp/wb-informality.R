rm(list=ls())
library(tidyverse)
library(janitor)
library(here)
library(wbstats)

# get list of indicators
new_wb_cache = wbcache()
new_wb_cache


# get GDP, life expectancy, infant mortality
wbsearch("urban", cache = new_wb_cache)
informal = wbsearch("informality", cache = new_wb_cache)

indicators = c("EN.POP.SLUM.UR.ZS",
               "SL.ISV.IFRM.ZS",
               "SP.URB.TOTL.IN.ZS",
               "IC.FRM.INFOR.INFOR1",
               "IC.FRM.INFOR.INFOR2",
               "IC.FRM.INFOR.INFOR4")


# get data
wb_dat = wb(indicator = indicators)


# subset to LA countries
lac = c("Cuba", "Dominican Republic",
        "Hait", "Jamaica", "Trinidad & Tobago",
        "Belize", "Costa Rica", "El Salvador",
        "Guatemala", "Honduras", "Mexico",
        "Nicaragua", "Panama",
        "Argentina", "Bolivia",
        "Brazil", "Chile", "Colombia",
        "Ecuador", "Paraguay", "Peru",
        "Uruguay", "Venezuela")


# filter to latin america and clean up
wb_la =
  wb_dat %>%
  filter(country %in% lac) %>%
  select(country, year = date, indicator, value) %>%
  pivot_wider(id_cols = c(country, year),
              names_from = indicator, values_from = value) %>%
  arrange(country, year)


write_rds(wb_la, path = here("data", "wb-informal.rda"))
