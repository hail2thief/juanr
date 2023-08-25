# libraries
library(tidyverse)
library(readxl)

# data
childcare = read_excel("/Users/juan/Dropbox/Mac/Downloads/nationaldatabaseofchildcareprices.xlsx") |>
  janitor::clean_names() |>
  select(state = state_name, county = county_name,
         fips = county_fips_code,
         year = study_year, unem_rate = unr_16, poverty_rate = pr_f,
         median_hh_income = mhi_2018, pop = total_pop,
         black = one_race_b, hispanic, white = one_race_w,
         infant_price = mc_infant, toddler_price = mc_toddler,
         preschool_price = mc_preschool,
         infant_family_price = mfcc_infant)


# save
save(childcare, file = "data/childcare.rda")
