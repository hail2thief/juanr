rm(list=ls())


# libraries
library(tidyverse)
library(vdem)
library(here)


# v-dem codebook
vdem_codebook %>%
  View()


# what variables to keep
# section 2


# main indices
df1 = extract_vdem(section_number = 2)

# other stuff
df2 = extract_vdem(section_number = 8, include_external = TRUE)



# Democracy stuff ---------------------------------------------------------



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



df2 =
  df2 %>%
  filter(vdem_country_name %in% lac) %>%
  filter(year > 1920) %>%
  select(country = vdem_country_name, year,
         e_migdppc:e_pt_coup)


# get GDP per capita
gdp =
  df2 %>%
  select(country, year, gdp_per_cap = e_migdppc) %>%
  filter(year <= 2016)


ggplot(data = gdp, aes(x = year, y = gdp_per_cap)) + geom_line() +
  facet_wrap(vars(country), scales = "free_y") +
  theme_light()


write_csv(gdp, path = "static/files/gdp-capita-lac.csv")
