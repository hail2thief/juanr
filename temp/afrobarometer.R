library(tidyverse)
library(haven)
library(here)

# ---- Read Afrobarometer Round 8 Ethiopia survey data ----
raw = read_sav(here("temp", "raw-data",
                     "eth_r8.data_.new_.final_.wtd_release.31mar21.sav"))

# ---- Helper: recode Afrobarometer missing values to NA ----
# Standard AB codes: 8/9 = refused/DK, 98/99 = refused/DK, 998/999, -1 = missing
recode_na = function(x, extra = NULL) {
  na_vals = c(-1, extra)
  x[x %in% na_vals] = NA
  x
}

# Recode standard 8/9 pattern (refused/DK on small scales)
recode_na_89 = function(x) recode_na(x, extra = c(8, 9))

# Recode standard 98/99 pattern
recode_na_9899 = function(x) recode_na(x, extra = c(98, 99))

# Recode standard 998/999 pattern
recode_na_998999 = function(x) recode_na(x, extra = c(998, 999))


# ---- Build the dataset ----
afrobarometer = raw |>
  transmute(

    # -- Survey weight --
    weight = withinwt_ea,

    # -- Demographics --
    age = recode_na_998999(Q1),

    gender = case_match(as.numeric(Q101),
                        1 ~ "male",
                        2 ~ "female"),

    urban = case_match(as.numeric(URBRUR),
                       1 ~ "urban",
                       2 ~ "rural"),

    region = case_match(as.numeric(REGION),
                        1340 ~ "Tigray",
                        1341 ~ "Afar",
                        1342 ~ "Amhara",
                        1343 ~ "Oromia",
                        1344 ~ "Somali",
                        1345 ~ "Benishangul-Gumuz",
                        1346 ~ "SNNP",
                        1347 ~ "Gambela",
                        1348 ~ "Harari",
                        1349 ~ "Addis Ababa",
                        1350 ~ "Dire Dawa"),

    education = case_match(as.numeric(recode_na_9899(Q97)),
                           0 ~ "none",
                           1 ~ "informal",
                           2 ~ "some primary",
                           3 ~ "primary",
                           4 ~ "some secondary",
                           5 ~ "secondary",
                           6 ~ "post-secondary",
                           7 ~ "some university",
                           8 ~ "university",
                           9 ~ "post-graduate"),

    employment = case_match(as.numeric(recode_na_89(Q95A)),
                            0 ~ "not employed, not looking",
                            1 ~ "not employed, looking",
                            2 ~ "part time",
                            3 ~ "full time"),

    # Simplify religion to major categories
    religion = {
      r = as.numeric(recode_na(Q98A, extra = c(9995, 9998, 9999)))
      case_when(
        r == 0 ~ "none",
        r == 3 ~ "orthodox",
        r %in% c(1, 2, 4:14) ~ "other christian",
        r %in% c(18:24, 1340) ~ "muslim",
        r %in% c(15:17, 25:34) ~ "other",
        TRUE ~ NA_character_
      )
    },

    # Simplify ethnicity to major groups
    ethnicity = {
      e = as.numeric(recode_na(Q81, extra = c(9990, 9995, 9998, 9999)))
      case_match(e,
                 1340 ~ "Oromo",
                 1341 ~ "Amhara",
                 1342 ~ "Somali",
                 1343 ~ "Tigre",
                 1344 ~ "Sidama",
                 1345 ~ "Guragie",
                 1347 ~ "Welayta",
                 .default = if_else(!is.na(e), "other", NA_character_))
    },

    # -- Deprivation / SES --
    # 0=Never, 1=Just once or twice, 2=Several times, 3=Many times, 4=Always
    no_food = recode_na_89(Q7A),
    no_water = recode_na_89(Q7B),
    no_medicine = recode_na_89(Q7C),
    no_income = recode_na_89(Q7E),

    # 0=No one owns, 1=Someone in HH owns, 2=Personally owns
    owns_phone = recode_na_89(Q92F),

    # 0=No, 1=Yes
    has_electricity = recode_na_89(Q94A),

    # -- Political attitudes --

    # 1=Wrong direction, 2=Right direction
    country_direction = case_match(as.numeric(recode_na_89(Q3)),
                                   1 ~ "wrong direction",
                                   2 ~ "right direction"),

    # 1=Statement 3 (doesn't matter), 2=Statement 2 (non-democratic ok),
    # 3=Statement 1 (democracy preferable)
    support_democracy = case_match(as.numeric(recode_na_89(Q21)),
                                   1 ~ "doesn't matter",
                                   2 ~ "non-democratic sometimes ok",
                                   3 ~ "democracy preferable"),

    # 0=Not a democracy, 1=Not at all satisfied, ..., 4=Very satisfied
    satisfied_democracy = recode_na_89(Q37),

    # Corruption: PM office. 0=None, 1=Some, 2=Most, 3=All
    corruption_president = recode_na_89(Q42A),

    # Reject one-party rule. 1=Strongly disapprove ... 5=Strongly approve
    one_party_rule = recode_na_89(Q20A),

    # Compromise: 1-5 scale (1-2 = winner pursues own, 3-4 = compromise important)
    compromise = recode_na_89(Q31),

    # Federalism vs unitary. 1-2 = federalism best, 3-4 = too divisive, 5 = neither
    federalism = recode_na_89(Q76B_ETH),

    # -- Political behavior --

    # 0=Never, 1=Occasionally, 2=Frequently
    discuss_politics = recode_na_89(Q9),

    # 0=Did not vote, 1=Too young, 2=Can't remember, 3=Voted
    voted = case_match(as.numeric(recode_na_89(Q13)),
                       0 ~ "did not vote",
                       1 ~ "too young",
                       2 ~ "can't remember",
                       3 ~ "voted"),

    # 0=No, would never, 1=No but would if had chance, 2=Yes once or twice,
    # 3=Yes several times, 4=Yes often
    protest = recode_na_89(Q11C),

    # Freedom to say what you think: 1=Not at all, 2=Not very, 3=Somewhat, 4=Completely
    free_speech = recode_na_89(Q10A),

    # -- Identity / social --

    # 1=Ethnic only, 2=More ethnic, 3=Equal, 4=More Ethiopian, 5=Ethiopian only
    ethnic_id = recode_na(Q82B, extra = c(7, 8, 9)),

    # 0=Must be careful, 1=Most people can be trusted
    social_trust = recode_na_89(Q83),

    # How often must be careful about politics: 0=Never, 1=Rarely, 2=Often, 3=Always
    careful_politics = recode_na_89(Q40D),

    # Fear of election violence: 0=A lot, 1=Somewhat, 2=A little bit, 3=Not at all
    fear_violence = recode_na_89(Q17D)

  ) |>
  # Convert characters to factors for cleaner use

  mutate(
    gender = factor(gender),
    urban = factor(urban),
    region = factor(region),
    education = factor(education,
                       levels = c("none", "informal", "some primary", "primary",
                                  "some secondary", "secondary", "post-secondary",
                                  "some university", "university", "post-graduate")),
    employment = factor(employment),
    religion = factor(religion),
    ethnicity = factor(ethnicity),
    country_direction = factor(country_direction),
    support_democracy = factor(support_democracy),
    voted = factor(voted)
  )


# ---- Sanity checks ----
cat("Dimensions:", dim(afrobarometer), "\n")
cat("Variables:", names(afrobarometer), "\n\n")

# Check missingness
cat("Missingness:\n")
afrobarometer |>
  summarise(across(everything(), ~mean(is.na(.)))) |>
  pivot_longer(everything()) |>
  filter(value > 0) |>
  arrange(desc(value)) |>
  print(n = 30)

# ---- Save ----
# Force base R types to avoid Arrow ALTREP serialization issues
afrobarometer[] = lapply(afrobarometer, function(x) {
  if (is.factor(x)) return(factor(as.character(x), levels = levels(x)))
  if (is.double(x)) return(as.double(x))
  if (is.integer(x)) return(as.integer(x))
  if (is.character(x)) return(as.character(x))
  x
})

save(afrobarometer, file = here("data", "afrobarometer.rda"),
     compress = "xz", version = 2)
cat("\nSaved afrobarometer.rda\n")
