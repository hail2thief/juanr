# libraries
library(tidyverse)


# read data
movies = read_csv("temp/raw-data/movie_metadata.csv") %>%
  # drop weird missing
  drop_na(color, title_year, gross) %>%
  # gotta drop foreign films unfortunately; $$$ figures are in non-USD and it screws everything up
  filter(country == "USA")


movies = movies %>%
  mutate(decade = plyr::round_any(title_year, 10, f = floor),
         decade = factor(paste0(decade, "s"))) %>%
  separate(genres, c("genre1", "genre2", "genre3")) %>%
  select(title = movie_title,
         year = title_year,
         decade,
         director = director_name,
         genre1,
         genre2,
         genre3,
         duration,
         gross,
         budget,
         imdb_score,
         color,
         content_rating) %>%
  select(title, year, decade, everything())

save(movies, file = "data/movies.rda")
