library(tidyverse)


elections = read_csv("temp/raw-data/elections.csv")

# output
save(elections, file = "data/elections.rda")
