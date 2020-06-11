rm(list=ls())
library(tidyverse)
library(here)
library(wbstats)

# get list of indicators
new_wb_cache = wbcache()


# get GDP, life expectancy, infant mortality
wbsearch("urban", cache = new_wb_cache)
informal = wbsearch("urban", cache = new_wb_cache)

indicators = c("EN.POP.SLUM.UR.ZS",
               "SL.ISV.IFRM.ZS",
               "SP.URB.TOTL.IN.ZS",
               "IC.FRM.INFOR.INFOR1",
               "IC.FRM.INFOR.INFOR2",
               "IC.FRM.INFOR.INFOR4",
               "EN.URB.LCTY.UR.ZS")


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
informal =
  wb_dat %>%
  filter(country %in% lac) %>%
  select(country, year = date, indicator, value) %>%
  pivot_wider(id_cols = c(country, year),
              names_from = indicator, values_from = value) %>%
  arrange(country, year)


# give dataset friendly names
new = c("country", "year", "pct_pop_slum", "pct_informal_work",
        "pct_urban", "pct_firms_compete", "pct_firms_constrain",
        "pct_firms_registered", "pct_largest_city")

colnames(informal) = new

# output
save(informal, file = here("data", "informal.rda"))
