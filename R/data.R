#' Latin America and the Caribbean World Bank Informality Data
#'
#' A dataset containing data from World Bank indicators on urbanization and
#' informality around the world. The variables are as follows:
#'
#' \itemize{
#' \item country. Country name.
#' \item year. Year.
#' \item pct_pop_slum. Population living in slums (% of urban population).
#' \item pct_informal_work. Informal employment (% of total non-agricultural employment).
#' \item pct_urban. Urban population (% of total population).
#' \item pct_firms_compete. Percent of firms competing against unregistered or informal firms.
#' \item pct_firms_constrain. Percent of firms identifying practices competitors in the informal sector as a major constraint.
#' \item pct_firms_registered. Percent of firms formally registered when they started operations in the country.
#' \item pct_largest_city. Population in the largest city (% of urban population).}
#'
#' @docType data
#' @keywords datasets
#' @name informal
#' @usage data(informal)
#' @format A (tibble) data frame with 1182 rows and 9 variables.
#' @source World Bank (wbstats package).
"informal"
