# libraries
library(tidyverse)


# read data
movies = read_csv("temp/raw-data/movie_metadata.csv") %>%
  filter(title_year >= 1950) %>%
  separate(genres, c("genre1", "genre2")) %>%
  select(title = movie_title,
         director = director_name,
         genre1,
         genre2,
         duration,
         gross,
         budget,
         rating = imdb_score,
         year = title_year) %>%
  drop_na(gross) %>%
  mutate(decade = case_when(year >= 1950 & year < 1960 ~ "1950s",
                            year >= 1960 & year < 1970 ~ "1960s",
                            year >= 1970 & year < 1980 ~ "1970s",
                            year >= 1980 & year < 1990 ~ "1980s",
                            year >= 1990 & year < 2000 ~ "1990s",
                            year >= 2000 & year < 2010 ~ "2000s",
                            year >= 2010 ~ "2010s"),
         decade = as.factor(decade)) %>%
  select(title, year, decade, everything())

save(movies, file = "data/movies.rda")
