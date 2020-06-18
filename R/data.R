#' World Bank Informality Data
#'
#' A panel dataset containing data from World Bank indicators on urbanization and
#' informality in select Latin America and the Caribbean countries (1960-2019). The variables are as follows:
#'
#' \itemize{
#' \item country. Country name.
#' \item year. Year.
#' \item pct_pop_slum. Population living in slums (\% of urban population).
#' \item pct_informal_work. Informal employment (\% of total non-agricultural employment).
#' \item pct_urban. Urban population (\% of total population).
#' \item pct_firms_compete. Percent of firms competing against unregistered or informal firms.
#' \item pct_firms_constrain. Percent of firms identifying practices competitors in the informal sector as a major constraint.
#' \item pct_firms_registered. Percent of firms formally registered when they started operations in the country.
#' \item pct_largest_city. Population in the largest city (\% of urban population).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name informal
#' @usage data(informal)
#' @format A (tibble) data frame with 1182 rows and 9 variables.
#' @source wbstats package and World Bank Indicators.
"informal"


#' Data on Sale of Provincial Governorships in Peru, 17th-18th century
#'
#' A cross-sectional dataset containing information on the sale of provincial governorships by the Spanish Crown in #' Peru during the 17th and 18th century, as well as province-level demographic and economic data. The dataset is  #' from Guardado (2018). The variables are as follows:
#'
#' \itemize{
#' \item audiencia. Spanish Audiencia.
#' \item provincia. colonial province name.
#' \item provcode. province code.
#' \item year. year of sale.
#' \item time. sequence in sale.
#' \item name_approx. name of purchaser (approximate).
#' \item appointed. appointed (not sold)? 1=yes.
#' \item title_raw. social status (as described in Crown's docs).
#' \item military. military career (or rank)? 1=yes.
#' \item orden. holds a knight title (caballero)? 1=yes.
#' \item nobility. holds other nobility titles? 1=yes.
#' \item noble. holds either a knight or other nobility titles? 1=yes.
#' \item rprice1. real office prices (in pesos) 1 peso=272 maravedies.
#' \item suitindex. avg agricultural suitability in province (1=max suitability).
#' \item centerxgd. avg longitude (based on center of districts in province).
#' \item centerygd. avg latitude (based on center of districts in province).
#' \item z. avg elevation.
#' \item distlima. avg distance to Lima (based on center of districts in province).
#' \item bishop. is the province a bishop seat? 1=yes.
#' \item cumwar. cumulative years of Spanish involvement in European wars.
#' \item war. indicator for years of Spanish involvement in European wars.
#' \item twowars. cumulative years of Spanish involvement in succession wars.
#' \item yearfromwar. cumulative years into / from the following European war.
#' \item pop54. province population levels in 1754 (Golte).
#' \item ind54. province indigenous population levels in 1754 (Golte).
#' \item gov_reb. anti-governor rebellion in year of purchase? 1=yes.
#' \item mita. province to provice forced labor to mines? 1=yes.
#' \item mine. gold or silver mine in province? 1=yes.
#' \item econactivity2. province is a market hub (circuito comercial)? 1=yes.
#' \item wage. wages (in pesos) during office-selling period.
#' \item reparto2. assigned repartimiento quota (in pesos) in 1754.
#' \item rep50. above the median of repartimiento quotas? 1=yes.
#' \item totalc. log total revenue at caja level.
#' \item tributonew. log total revenue from head taxes (tributo).
#' \item mining. log total revenue from mining taxes.
#' \item alcabala. log total revenue from sale taxes (alcabala).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name peru_office
#' @usage data(peru_office)
#' @format A (tibble) data frame with 632 rows and 36 variables.
#' @source Guardado, J. (2018). Office-selling, corruption, and long-term development in Peru. American Political Science Review, 112(4), 971-995.
"peru_office"


#' Data on Sale of Provincial Governorships in Peru, 17th-18th century, and Contemporary Outcomes
#'
#' A dataset linking information on the sale of provincial governorships by the Spanish Crown in Peru during the 17th and 18th century with contemporary development outcomes. The dataset is from Guardado (2018). The variables are as follows:
#'
#' \itemize{
#' \item provincia. colonial province name.
#' \item provcode. province code.
#' \item district. contemporary district name.
#' \item ubigeo. contemporary district code enaho 2013.
#' \item conglome. conglomerate code enaho 2013.
#' \item vivienda. house code enaho 2013.
#' \item hogar. household code enaho 2013.
#' \item codperso. individual code enaho 2013.
#' \item lhhequivlm. log of equivalent household consumption minus transfers in Lima prices.
#' \item lhhequiv. log of equivalent household consumption minus transfers in normal prices.
#' \item schoolyears. highest educational level attained (0-21 years).
#' \item QUE. Language learned as a child: Quechua? 1=yes?.
#' \item male. respondent is male? 1=yes.
#' \item age. respondent age.
#' \item kids. # household members aged 0 to 14.
#' \item infants. # household members aged 0 to 4.
#' \item adults. # adult household members.
#' \item localborn. respondent was born in current district where living? 1=yes.
#' \item trust_jne. Trust in Jurado Nacional de Eleccions? 1=a lot/ sufficient.
#' \item trust_onpe. Trust in Oficina Nacional de Procesos Electorales? 1=a lot/sufficient.
#' \item trust_munic. Trust in provincial government? 1=a lot/sufficient.
#' \item trust_distrit. Trust in district government? 1=a lot/sufficient.
#' \item trust_police. Trust in national police? 1=a lot/sufficient.
#' \item trust_army. Trust in national army? 1=a lot/sufficient.
#' \item trust_judic. Trust in judicial branch? 1=a lot/sufficient.
#' \item trust_government. Trust in regional government? 1=a lot/sufficient.
#' \item trust_paper. Trust in written media? 1=a lot/sufficient.
#' \item trust_radtv. Trust in radio or TV? 1=a lot/sufficient.
#' \item peasant_id. Identified with indigenous peasant groups? 1=yes.
#' \item pop1572. district population in 1572.
#' \item logtributario. log head tax paying individuals in district 1572.
#' \item ltrib_rate. log tax rate in 1572.
#' \item perctribut. share population tax paying.
#' \item percviejos. share population elder.
#' \item percmuchachos. share population young.
#' \item percmujeres. share population women.
#' \item shpriest. share of budget for priests.
#' \item shcorreg. share of budget for colonial administration.
#' \item shcaciq. share of budget for indigenous rulers.
#' \item shencom. share of budget for encomendero.
#' \item toilethouse. share district households with indoor toilets.
#' \item mud. share district households with mud wall material.
#' \item shindig. share indigenous population in district 1876.
#' \item shnonlit. share of illiterate population in district 1876.
#' \item shindig80. share indigenous population in district 1780.
#' \item suitindex. avg agricultural suitability in district.
#' \item z. elevation.
#' \item centerxgd. longitude (based on center of district).
#' \item centerygd. latitude (based on center of district).
#' \item distlima. distance to Lima (based on center of district).
#' \item lz. log elevation.
#' \item ldistlima. log avg distance to Lima (based on center of district).
#' \item pop1827. log province population 1827.
#' \item grossinc1827. gross provincial income 1827.
#' \item pcinc1827. per capital provincial income 1827.
#' \item wage. wages (in pesos) throughout period.
#' \item mita. province to provice forced labor to mines? 1=yes.
#' \item mine. gold or silver mine in province? 1=yes.
#' \item lreparto2. log assigned repartimiento quota (in pesos) in 1754.
#' \item pop54. province population levels in 1754 (Golte).
#' \item ind54. province indigenous population levels in 1754 (Golte).
#' \item tribut. number of tax paying indigenous in province in 1754.
#' \item orig. number of tax paying indigenous born in province in 1754.
#' \item forastero. number of tax paying indigenous born outside province in 1754.
#' \item lpop54. log province population levels in 1754 (Golte).
#' \item lind54. log province indigenous population levels in 1754 (Golte).
#' \item postsales. year of known first appointment post office-selling period.
#' \item econactivity2. province is a market hub (circuito comercial)? 1=yes.
#' \item bishop. is the province a bishop seat? 1=yes.
#' \item lwage. log wages during office-selling period.
#' \item pop90. district population in 1990.
#' \item lpop90. log district population in 1990.
#' \item allpositions. total governorships appointed or sold during office-selling.
#' \item sold. total governorships sold in province during office-selling.
#' \item meanprice. avg log office price per capita during war.
#' \item meanpriceh. avg log office price per capita during peace.
#' \item minpriceh. minimum log office price per capita during peace.
#' \item firstpriceh. first log office price per capita during peace.
#' \item border. district bordering other provinces.
#' \item rep50. above the median of repartimiento quota? 1=yes.
#' \item soldpc. share of sold positions by province, weighted by population.
#' \item cases83. All violent incidents in district 1980-83.
#' \item authority83. All violent attacks against political authorities 1980-1983.
#' \item guerrilla83. All violent attacks by Shining Path 1980-83.
#' \item anyreb_pre. total rebellions during office-selling (1708-1752).
#' \item govreb_pre. total anti-governor rebellions during office-selling (1708-1752).
#' \item alltax_pre. total tax-related rebellions during office-selling (1708-1752).
#' \item anyreb_post. total rebellions post office-selling (1752-1780).
#' \item govreb_post. total anti-governor rebellions post office-selling (1752-1780).
#' \item alltax_post. total tax-related rebellions post office-selling (1752-1780).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name peru_office_dev
#' @usage data(peru_office_dev)
#' @format A (tibble) data frame with 14,494 rows and 90 variables.
#' @source Guardado, J. (2018). Office-selling, corruption, and long-term development in Peru. American Political Science Review, 112(4), 971-995.
"peru_office_dev"


#' Varieties of Democracy Indicators for Latin America
#'
#' A dataset from the Varieties of Democracy (V-DEM) project that characterizes
#' the different dimensions of democracy across Latin America. The variables are as follows:
#'
#' \itemize{
#' \item v2x_polyarchy. To what extent is the ideal of electoral democracy in its fullest sense achieved?.
#' Interval, from low to high (0-1) .
#' \item v2x_libdem. To what extent is the ideal of liberal democracy achieved?.
#' Interval, from low to high (0-1) .
#' \item v2x_partipdem. To what extent is the ideal of participatory democracy achieved?.
#' Interval, from low to high (0-1) .
#' \item v2x_delibdem. To what extent is the ideal of deliberative democracy achieved?.
#' Interval, from low to high (0-1) .
#' \item v2x_egaldem. To what extent is the ideal of egalitarian democracy achieved?.
#' Interval, from low to high (0-1) .
#' \item v2x_freexp_altinf. To what extent does government respect press and media freedom,
#' the freedom of ordinary people to discuss political matters at home and in the public sphere,
#' as well as the freedom of academic and cultural expression?. Interval, from low to high (0-1).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name vdem
#' @usage data(vdem)
#' @format A (tibble) data frame with 4,013 rows and 8 variables.
#' @source The Varieties of Democracy (V-DEM) project, via: https://github.com/xmarquez/vdem.
"vdem"


#' Economic and Population Panel Data for Latin America
#'
#' A country-year panel dataset from varied sources on economic and demographic indicators in Latin America.
#' The variables are as follows:
#'
#' \itemize{
#' \item country. Name of country.
#' \item year. Year.
#' \item e_cow_exports. What is the total value of a country’s exports? . Barbieri and Keshk (2016).
#' \item e_cow_imports. What is the total value of a country’s imports? . Barbieri and Keshk (2016).
#' \item e_migdppc. What is the GDP per capita? . The Maddison Project Database (2018)
#' \item e_miinflat. What is the annual inflation rate? . Clio Infra (clio-infra.eu), based on Arroyo Abad, Davies and van Zanden (N.d.),
#' Montevideo- Oxford Latin America Economic History Database (http://moxlad.fcs.edu.uy/es/basededatos.html), De Zwart (2011a), De Zwart (2011b),
#' Reinhart and Rogoff (2011), Santing (N.d.), World Bank (2013).
#' \item e_total_oil_income_pc. What is the real value of a country’s petroleum production? . Haber and Menaldo (2011).
#' \item e_mipopula. What is the total population (in thousands)? . Clio Infra (clio-infra.eu), drawing on Goldewijk, Beusen, Janssen (2010), History Database of Global Environment (www.pbl.nl/hyde).
#' \item e_miurbpop. What is the total urban population? . Clio Infra (clio-infra.eu) based on Bairoch, Batou, Chevre (1988), Chandler (1987), de Vries (1984),
#' History Database of Global Environment (www.pbl.nl/hyde), Etter, McAlpine, Possingham (2007), Grigg (1980), Goldewijk, Beusen, Janssen (2010),
#' Maddison (2001), Roz- man (1973), United Nations (2009a), United Nations (2009b), Urquhart and Buckley (1965), Van Zanden (2012).
#' \item e_peinfmor. What is the infant mortality rate? . Gapminder (gapminder.org), drawing on various sources.
#' \item e_pelifeex. What is the life expectancy? . Gapminder (gapminder.org), drawing on Human Mortality Database (2008),
#' Riley (2005a, 2005b), Human Life Table Database (2007), United Nations Population Division (2010). Clio Infra (clio-infra.eu),
#' drawing on Human Mortality Database (2008), Human Life Table Database (2017), World Bank (2013),
#' Montevideo-Oxford Latin America Economic History Database (http://moxlad.fcs.edu.uy/es/basededatos.html).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name gdp
#' @usage data(gdp)
#' @format A (tibble) data frame with 4,013 rows and 11 variables.
#' @source The Varieties of Democracy (V-DEM) project, via: https://github.com/xmarquez/vdem.
"gdp"
