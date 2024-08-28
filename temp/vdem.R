# libraries
library(tidyverse)
library(vdemdata)
library(here)


# v-dem codebook
codebook



# Democracy stuff ---------------------------------------------------------



indicators = c("v2x_polyarchy",
               "v2x_libdem",
               "v2x_partipdem",
               "v2x_delibdem",
               "v2x_egaldem")

vdem =
  vdemdata::vdem |>
  select(country = country_name, year, all_of(indicators)) |>
  arrange(country) |>
  as_tibble()


# save data
save(vdem, file = here("data", "vdem.rda"), compress = "xz")


# get dictionary
dict = tibble(variable = codebook %>%
                filter(tag %in% indicators) %>%
              pull(tag),
              label = codebook %>%
                filter(tag %in% indicators) %>%
              pull(question),
              scale = codebook %>%
                filter(tag %in% indicators) %>%
              pull(scale))


for(ii in 1:nrow(dict))
{
  cat(paste0("\\item ", dict$variable[ii], ". ", dict$label[ii]), ".", dict$scale[ii], ".")
  cat("\n")

}


# Economic stuff ----------------------------------------------------------



# indicators
indicators = c("e_migdppc",
               "e_miinflat",
               "e_mipopula",
               "e_miurbpop",
               "e_peinfmor",
               "e_pelifeex",
               "e_total_oil_income_pc",
               "e_cow_imports",
               "e_cow_exports")


# clean up
gdp =
  df2 %>%
  filter(vdem_country_name %in% lac) %>%
  select(country = vdem_country_name,
         year, all_of(indicators))



# get dictionary
dict = tibble(variable = vdem_codebook %>%
                filter(name %in% indicators) %>%
                pull(name),
              label = vdem_codebook %>%
                filter(name %in% indicators) %>%
                pull(question),
              source = vdem_codebook %>%
                filter(name %in% indicators) %>%
                pull(source))


for(ii in 1:nrow(dict))
{
  cat(paste0("\\item ", dict$variable[ii], ". ", dict$label[ii]), ".", dict$source[ii])
  cat("\n")

}

# save data
save(gdp, file = here("data", "gdp.rda"), compress = "xz")



