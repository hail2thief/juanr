library(tidyverse)
library(here)

speed_dating = read_csv("data-raw/speed-dating/Speed Dating Data.csv",
                        show_col_types = FALSE) |>
  transmute(
    # identifiers
    person_id = iid,
    partner_id = pid,
    wave,

    # participant demographics
    gender = if_else(gender == 1, "man", "woman"),
    age,
    race = case_match(
      race,
      1 ~ "Black",
      2 ~ "White",
      3 ~ "Hispanic",
      4 ~ "Asian",
      6 ~ "Other"
    ),
    field = case_match(
      field_cd,
      1 ~ "Law",
      2 ~ "Math",
      3 ~ "Social Science/Psychology",
      4 ~ "Medical/Pharma/Biotech",
      5 ~ "Engineering",
      6 ~ "Writing/Journalism",
      7 ~ "History/Religion/Philosophy",
      8 ~ "Business/Econ/Finance",
      9 ~ "Education/Academia",
      10 ~ "Bio/Chem/Physics",
      11 ~ "Social Work",
      12 ~ "Undergrad/Undecided",
      13 ~ "Political Science/Intl Affairs",
      14 ~ "Film",
      15 ~ "Fine Arts",
      16 ~ "Languages",
      17 ~ "Architecture",
      18 ~ "Other"
    ),
    goal = case_match(
      goal,
      1 ~ "Fun night out",
      2 ~ "Meet new people",
      3 ~ "Get a date",
      4 ~ "Serious relationship",
      5 ~ "To say I did it",
      6 ~ "Other"
    ),
    date_freq = case_match(
      date,
      1 ~ "Several times a week",
      2 ~ "Twice a week",
      3 ~ "Once a week",
      4 ~ "Twice a month",
      5 ~ "Once a month",
      6 ~ "Several times a year",
      7 ~ "Almost never"
    ),
    go_out = case_match(
      go_out,
      1 ~ "Several times a week",
      2 ~ "Twice a week",
      3 ~ "Once a week",
      4 ~ "Twice a month",
      5 ~ "Once a month",
      6 ~ "Several times a year",
      7 ~ "Almost never"
    ),

    # what they say they want (pre-event, out of 100 pts or 1-10 scale)
    want_attractive = attr1_1,
    want_sincere = sinc1_1,
    want_intelligent = intel1_1,
    want_fun = fun1_1,
    want_ambitious = amb1_1,
    want_shared_interests = shar1_1,

    # how they rated their date (1-10 scale)
    rate_attractive = attr,
    rate_sincere = sinc,
    rate_intelligent = intel,
    rate_fun = fun,
    rate_ambitious = amb,
    rate_shared_interests = shar,
    rate_overall = like,
    rate_prob_yes = prob,

    # self-ratings (1-10 scale)
    self_attractive = attr3_1,
    self_sincere = sinc3_1,
    self_intelligent = intel3_1,
    self_fun = fun3_1,
    self_ambitious = amb3_1,

    # date context
    same_race = samerace,

    # outcome
    decision = dec,
    decision_partner = dec_o,
    match,

    # interests (1-10 scale)
    interest_sports = sports,
    interest_dining = dining,
    interest_museums = museums,
    interest_art = art,
    interest_hiking = hiking,
    interest_clubbing = clubbing,
    interest_reading = reading,
    interest_tv = tv,
    interest_movies = movies,
    interest_music = music
  )

save(speed_dating, file = here("data", "speed_dating.rda"), compress = "xz")
