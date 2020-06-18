rm(list=ls())


# libraries
library(tidyverse)
library(vdem)
library(here)


# v-dem codebook
vdem_codebook


# what variables to keep
# section 2


# main indices
df1 = extract_vdem(section_number = 2)

# other stuff
df2 = extract_vdem(section_number = 8, include_external = TRUE)


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


# Democracy stuff ---------------------------------------------------------



indicators = c("v2x_polyarchy",
               "v2x_libdem",
               "v2x_partipdem",
               "v2x_delibdem",
               "v2x_egaldem",
               "v2x_freexp_altinf")

vdem =
  df1 %>%
  filter(vdem_country_name %in% lac) %>%
  select(country = vdem_country_name,
         year,
         all_of(indicators))


# save data
save(vdem, file = here("data", "vdem.rda"), compress = "xz")


# get dictionary
dict = tibble(variable = vdem_codebook %>%
                filter(name %in% indicators) %>%
              pull(name),
              label = vdem_codebook %>%
                filter(name %in% indicators) %>%
              pull(question),
              scale = vdem_codebook %>%
                filter(name %in% indicators) %>%
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



