
# `juanr`: Data for Teaching

<img src="temp/sticker.png" width="30%">

## Installation

You can install the development version of `{juanr}` from Github via the
`{devtools}` package. I suppose using the `{remotes}` package would work
as well.

``` r
devtools::install_github("svmiller/juanr")
```

## Usage

The data set already has a lot to offer those who might be curious about
its contents. You can do this to see what is in it.

``` r
data(package = "juanr")
```

The ensuing output will look like this.

| **Object Name** | **Title/Description**                                                                          |
|:----------------|:-----------------------------------------------------------------------------------------------|
| `bot`           | American Voter Bot data                                                                        |
| `casual`        | iCasualties data                                                                               |
| `colony_long`   | Data on Sale of Provincial Governorships in Peru, 17th-18th century, and Contemporary Outcomes |
| `colony`        | Data on Sale of Provincial Governorships in Peru, 17th-18th century                            |
| `crime`         | Data on Crime Victimization in Latin America, 2018                                             |
| `elections`     | US County Election Data                                                                        |
| `gdp`           | Economic and Population Panel Data for Latin America                                           |
| `informal`      | World Bank Informality Data                                                                    |
| `invasions`     | Data on Land Invasions in Brazil                                                               |
| `movies`        | Movies data                                                                                    |
| `pokemon`       | Pokemon data                                                                                   |
| `race`          | Race and Colorism Survey Data from LAPOP                                                       |
| `vdem`          | Varieties of Democracy Indicators for Latin America                                            |
| `wealth`        | Data on Income and Household Assets in Honduras, 2018                                          |

Here is a simple scraping job to provide more information (by way of the
`description` field in the associated R Documentation file). I include
these descriptions as a vignette as well.

| **Object Name** | **Description**                                                                                                                                                                                                                                                                             |
|:----------------|:--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `bot`           | A sample of respondents from the Cooperative Election Survey. Inspired by the Twitter account “American Voter Bot”.                                                                                                                                                                         |
| `casual`        | Data on American soldier fatalities during the US invasion of Iraq and Afghanistan, collected by iCasualties. Note: Data here may not reflect most updated numbers.                                                                                                                         |
| `colony_long`   | A dataset linking information on the sale of provincial governorships by the Spanish Crown in Peru during the 17th and 18th century with contemporary development outcomes. The dataset is from Guardado (2018). The variables are as follows:                                              |
| `colony`        | A cross-sectional dataset containing information on the sale of provincial governorships by the Spanish Crown in \#’ Peru during the 17th and 18th century, as well as province-level demographic and economic data. The dataset is \#’ from Guardado (2018). The variables are as follows: |
| `crime`         | Survey data on experiences with and exposure to crime in select Latin American countries.                                                                                                                                                                                                   |
| `elections`     | County-level data with electoral results from 2012, 2016, and 2020. Note: some 2020 results based on estimates.                                                                                                                                                                             |
| `gdp`           | A country-year panel dataset from varied sources on economic and demographic indicators in Latin America.                                                                                                                                                                                   |
| `informal`      | A panel dataset containing data from World Bank indicators on urbanization and                                                                                                                                                                                                              |
| `invasions`     | Data on land invasions in Brazil, at the municipal level, from Hidalgo et. al (2010).                                                                                                                                                                                                       |
| `movies`        | A sample of movies and their characteristics from IMDB (1950-2016).                                                                                                                                                                                                                         |
| `pokemon`       | A dataset containing the characteristics of 800+ Pokemon.                                                                                                                                                                                                                                   |
| `race`          | Survey data on race and colorism in Colombia, Brazil, Mexico, Guatemala,                                                                                                                                                                                                                    |
| `vdem`          | A dataset from the Varieties of Democracy (V-DEM) project that characterizes                                                                                                                                                                                                                |
| `wealth`        | Survey data on income, household assets, and other markers of wealth/poverty in Honduras.                                                                                                                                                                                                   |
