# libraries
library(tidyverse)
library(here)

# read data
transacts = read_csv("data-raw/art-work-prices/transactions.csv")
artist_info = read_csv("data-raw/art-work-prices/Df_mloutfull.csv") |>
  select(artist_name, gender_male, elite_school) |>
  distinct() |>
  drop_na()

# keep only the columns we need for transactions
art = transacts |> select(case_id, artist_name, lot_title, year_of_artwork,
                          event_year, nationality,
                  `Year of Birth`, genre, country, real_price_usd,
                  `size (inch by inch)`) |>
  janitor::clean_names() |>
  # filter out numbers from genre
  filter(!str_detect(genre, "[0-9]")) |>
  # filter rows so country does not equal a number
  filter(!str_detect(country, "[0-9]")) |>
  # filter rows so nationality does not equal a number
  filter(!str_detect(nationality, "[0-9]")) |>
  # convert size_inch_by_inch to numeric
  mutate(size_inch_by_inch = as.numeric(size_inch_by_inch))


# merge the two
art = left_join(art, artist_info)



# save data
save(art, file = here("data", "art.rda"), compress = "xz")

