#' Affairs dataset
#'
#' Data on extramarital affairs from R.C. Fair (1978), "A Theory of Extramarital Affairs," Journal of Political Economy 86, 45-61. Originally obtained from a survey by Psychology Today.
#' The variables are as follows:
#'
#' \itemize{
#' \item male. =1 if male.
#' \item age. Age in years.
#' \item years_married. Years married.
#' \item kids. =1 if have kids.
#' \item relig. Religiosity (5 = very religious, 4 = somewhat, 3 = slightly, 2 = not at all, 1 = anti).
#' \item educ. Years of schooling.
#' \item occup. Occupation, reverse Hollingshead scale.
#' \item marriage_rating. Marriage rating (5 = very happy, 4 = happier than avg, 3 = avg, 2 = somewhat unhappy, 1 = very unhappy).
#' \item n_affairs. Number of affairs within last year.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name affairs
#' @usage data(affairs)
#' @format A (tibble) data frame with 601 rows and 9 variables.
#' @source \url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
"affairs"




#' Migrant children dataset
#'
#' dataset on the placement of 550,000+ unaccompanied migrant children with local sponsors between January 2015 and May 2023.
#' The variables are as follows:
#'
#' \itemize{
#' \item childs_country_of_origin. Country of origin of the child.
#' \item childs_gender. Gender of child.
#' \item childs_date_of_entry. Date of entry of child.
#' \item childs_date_of_release. Date of release of child.
#' \item sponsor_category. Category of sponsor (note: I recoded "Family Friend" as "Distant relative or unrelated adult").
#' \item relationship_of_sponsor. Relationship of sponsor to child.
#' \item state_abbr. State abbreviation of sponsor.
#' \item county. County of sponsor.
#' \item city. City of sponsor.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name migrant_children
#' @usage data(migrant_children)
#' @format A (tibble) data frame with 553,322 rows and 9 variables.
#' @source \url{https://github.com/nytimes/hhs-child-migrant-data}
"migrant_children"

#' Amazon purchases
#'
#' dataset of Amazon purchases, merged with a survey of the purchasers. I picked a random subset of 2,000 purchasers for this dataset.
#' The variables are as follows:
#'
#' \itemize{
#' \item order_date. Date of purchase.
#' \item price_per_unit. Price per unit.
#' \item quantity. Quantity purchased.
#' \item shipping_address_state. Shipping address state.
#' \item category. Category of purchase.
#' \item age. Age of purchaser.
#' \item hispanic. Is purchaser Hispanic?
#' \item race. Race of purchaser.
#' \item education. Highest level of educational attainment for purchaser.
#' \item income. Income of purchaser.
#' \item gender. Gender of purchaser.
#' \item hh_size. Household size.
#' \item marijuana. Does the purchaser use marijuana?
#' \item alcohol. Does the purchaser drink alcohol?
#' \item id. Unique identifier for each purchaser.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name amazon
#' @usage data(amazon)
#' @format A (tibble) data frame with 743,167 rows and 15 variables.
#' @source Berke, A., Calacci, D., Mahari, R. et al. Open e-commerce 1.0, five years of crowdsourced U.S. Amazon purchase histories with user demographics. Sci Data 11, 491 (2024). https://doi.org/10.1038/s41597-024-03329-6
"amazon"


#' Art sales
#'
#' dataset of auction sales records, including artists' attributes, and market information.
#' The variables are as follows:
#'
#' \itemize{
#' \item case_id. Unique identifier for each auction sale.
#' \item artist_name. Name of the artist.
#' \item lot_title. Title of the artwork.
#' \item year_of_artwork. Year the artwork was created.
#' \item event_year. Year the auction took place.
#' \item nationality. Artist nationality.
#' \item year_of_birth. Artist year of birth.
#' \item genre. Genre of the artwork.
#' \item country. Country where the auction took place.
#' \item real_price_usd. Price of the artwork in real USD.
#' \item size_inch_by_inch. Size of the artwork in inches.
#' \item gender_male. Dummy variable for whether artist is male.
#' \item elite_school. Dummy variable for whether artist attended an elite school.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name art
#' @usage data(art)
#' @format A (tibble) data frame with 18,400 rows and 13 variables.
#' @source Lee, K., Park, J., Goree, S. et al. Social signals predict contemporary art prices better than visual features, particularly in emerging markets. Sci Rep 14, 11615 (2024).
"art"


#' PARLGOV Dataset on European elections
#'
#' Data on European election results, by political party.
#' The variables are as follows:
#'
#' \itemize{
#' \item country. Country.
#' \item election. Type of election -- 'parliament' or 'ep' election.
#' \item date. Date the election took place. If the election lasted for several days, we code the last date.
#' \item party. Name of party.
#' \item party_id. Party ID.
#' \item vote_share. percentage of votes for a party.
#' \item seats. number of seats won by party. Seats coded for alliance members if information available. Coded as 0 for parties that won no seats and as missing value for electoral alliances if seats are coded at the level of alliance members.
#' \item total_seats. total number of seats.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name euro_elections
#' @usage data(euro_elections)
#' @format A (tibble) data frame with 8,947 rows and 8 variables.
#' @source Döring, Holger, Constantin Huber, Philip Manow, Maike Hesse and Alexandra Quaas. 2023. Parliaments and governments database (ParlGov): Information on parties, elections and cabinets in established democracies.
"euro_elections"

#' PARLGOV Dataset on European political parties
#'
#' Data on the characteristics of European political parties. Note that I excluded parties where the family variable was uncoded.
#' The variables are as follows:
#'
#' \itemize{
#' \item country. Country.
#' \item party. Name of party.
#' \item family. Broader ideological "family" (e.g., Conservative) that party belongs to.
#' \item left_right. 0--10 scale mean value in left/right dimension with data from Castles/Mair 1983, Huber/Inglehart 1995, Benoit/Laver 2006 and CHES 2010.
#' \item state_market. 0--10 scale mean value in 'regulation of the economy' dimension with data from Benoit/Laver 2006 and CHES 2010.
#' \item liberty_authority. 0--10 scale mean value in 'libertarian/authoritarian' dimension with data from Benoit/Laver 2006 and CHES 2010.
#' \item eu_anti_pro. 0--10 scale mean value in 'EU integration' dimension with data from Ray 1999, Benoit/Laver 2006 and CHES 2010.
#' \item party_id. Party ID.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name parties
#' @usage data(parties)
#' @format A (tibble) data frame with 1,672 rows and 8 variables.
#' @source Döring, Holger, Constantin Huber, Philip Manow, Maike Hesse and Alexandra Quaas. 2023. Parliaments and governments database (ParlGov): Information on parties, elections and cabinets in established democracies.
"parties"

#' Data on the Big Five personality traits
#'
#' Dataset that provides big five personality trait scores for 307,313 people from different countries.
#' The variables are as follows:
#'
#' \itemize{
#' \item country. Country where respondent lives.
#' \item age. Age of respondent.
#' \item sex. Sex of respondent.
#' \item agreeable_score. Agreeableness score, ranging from 0 (critical / rational) to 1 (friendly/compassionate).
#' \item extraversion_score. Extraversion score, ranging from 0 (solitary/reserved) to 1 (outgoing/energetic).
#' \item openness_score. Openness score, ranging from 0 (consistent/cautious) to 1 (inventive/curious).
#' \item conscientiousness_score. Consccientiousness score, ranging from 0 (extravagant/careless) to 1 (efficient/organized).
#' \item neuroticism_score. Neuroticism score, ranging from 0 (resilient/confident) to 1 (sensitive/nervous).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name big_five
#' @usage data(big_five)
#' @format A (tibble) data frame with 307,313 rows and 8 variables.
#' @source For info on the traits see \url{https://en.wikipedia.org/wiki/Big_Five_personality_traits}. Data comes from \url{https://github.com/automoto/big-five-data}.
"big_five"


#' Rebel Organization Leaders (ROLE) Database
#'
#' Dataset that provides a wide range of biographical information on all top rebel, insurgent, and terrorist leaders who were active in civil wars between 1980 and 2011.
#' The variables are as follows:
#'
#' \itemize{
#' \item leadercode. Leader code.
#' \item name. Full name.
#' \item state. The conflict country against which the leader fought.
#' \item conflict. Name of the conflict in which the leader fought.
#' \item group. Name of group.
#' \item gender. Gender of leader.
#' \item birth_year. Year of birth.
#' \item dead. Is leader dead? Coded as of December 31, 2018.
#' \item birth_place. Place of birth.
#' \item education. Highest level of completed education.
#' \item study_area. Area of study for highest degree achieved.
#' \item entry_method. How did the individual come to lead the organization?
#' \item western. Dummy variable where 1 means the leader obtained a degree (bachelor's, master's, doctorate, or equivalent) from a university in the US, UK, Austria, Belgium, Canada, Denmark, Finland, France, Germany, Greece, Ireland, Italy, the Netherlands, Norway, Portugal, Spain, Sweden, or Switzerland and 0 otherwise.
#' \item married. Dummy variable where 1 means the leader was married at some point and 0 otherwise.
#' \item children. Dummy variable where 1 means the leader had children and 0 otherwise.
#' \item religion. The religion with which the leader self-identified.
#' \item elite_family. Did the leader come from an elite family with political power or connections?
#' \item occupation. The leader's primary occupation prior to his/her becoming rebel organization leader.
#' \item train_abroad. Dummy variable where 1 means the leader received training abroad from a foreign military or foreign rebel group before becoming leader and 0 otherwise.
#' \item death_cause. Cause of death.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name rebel_leader
#' @usage data(rebel_leader)
#' @format A (tibble) data frame with 425 rows and 20 variables.
#' @source Acosta, B., Huang, R., & Silverman, D. (2023). Introducing ROLE: A database of rebel leader attributes in armed conflict. Journal of Peace Research, 60(2), 352–361. https://doi.org/10.1177/00223433221077920
"rebel_leader"


#' Dataset on Incarcerated Populations (2023)
#'
#' Data on the racial composition of prison populations in the US, at the state-month level.
#' The variables are as follows:
#'
#' \itemize{
#' \item date. Date.
#' \item state. State. Count of total incarcerated population.
#' \item incarcerated_total. Count of total incarcerated population.
#' \item incarcerated_white. Count of white incarcerated population.
#' \item incarcerated_black. Count of Black incarcerated population.
#' \item incarcerated_hispanic. Count of Hispanic incarcerated population.
#' \item incarcerated_amerind. Count of Amerindian incarcerated population.
#' \item incarcerated_asian. Count of Asian incarcerated population.
#' \item incarcerated_nonwhite. Count of nonwhite incarcerated population.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name prison
#' @usage data(prison)
#' @format A (tibble) data frame with 9,585 rows and 9 variables.
#' @source Klein, B., Ogbunugafor, C.B., Schafer, B.J. et al. COVID-19 amplified racial disparities in the US criminal legal system. Nature 617, 344–350 (2023). https://doi.org/10.1038/s41586-023-05980-2
"prison"

#' National Database of Childcare Prices
#'
#' A dataset that provides information on childcare prices and other demographics at the county-year level in the United States. Childcare prices are based on market rate surveys.
#' The variables are as follows:
#'
#' \itemize{
#' \item state. State.
#' \item county. County.
#' \item fips. Five-digit number that uniquely identifies the county in a state.
#' \item year. Year the data collection began for the market rate survey.
#' \item unem_rate. Unemployment rate of the population aged 16 years old or older (%).
#' \item poverty_rate. Poverty rate for families.
#' \item median_hh_income. Median household income.
#' \item pop. Count of the total population.
#' \item black. Percent of population that identifies as being one race and being only Black or African American.
#' \item hispanic. Percent of population that identifies as being Hispanic or Latino regardless of race.
#' \item white. Percent of population that identifies as being one race and being only White or Caucasian.
#' \item infant_price. Aggregated weekly, full-time median price charged for Center-based Care for infants (i.e. aged 0 through 23 months).
#' \item toddler_price. Aggregated weekly, full-time median price charged for Center-based Care for toddlers (i.e. aged 24 through 35 months).
#' \item preschool_price. Aggregated weekly, full-time median price charged for Center-based Care for preschoolers (i.e. aged 36 through 54 months).
#' \item infant_family_price. Aggregated weekly, full-time median price charged for Family Childcare for infants (i.e. aged 0 through 23 months).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name childcare
#' @usage data(childcare)
#' @format A (tibble) data frame with 34,567 rows and 15 variables.
#' @source National Database of Childcare Prices from the Department of Labor. \url{https://www.dol.gov/agencies/wb/topics/featured-childcare}
"childcare"

#' Cline Center Coup d'État Project Dataset
#'
#' This dataset from the Cline Center provides information on all known failed and successful coup events for every country in the world.
#' The variables are as follows:
#'
#' \itemize{
#' \item country. Name of the country where coup event occurred.
#' \item year. Year of event.
#' \item month. Month of event.
#' \item day. Day of event.
#' \item event_type. Indicates whether the event is a coup, attempted coup, or conspiracy.
#' \item unrealized. A dummy variable where one indicates an unsuccessful coup or plot and zero otherwise.
#' \item realized. A dummy variable where one indicates a successful coup and zero otherwise.
#' \item conspiracy. A dummy variable where one indicates a coup conspiracy thwarted prior to execution and zero otherwise.
#' \item attempt. A dummy variable where one indicates a coup was attempted by failed and zero otherwise.
#' \item military. A dummy variable where one indicates a military coup/attempt/conspiracy and zero otherwise.
#' \item foreign. A dummy variable where one indicates a foreign-backed coup/attempt/conspiracy and zero otherwise.
#' \item auto. A dummy variable where one indicates an auto coup and zero otherwise.
#' \item popular. A dummy variable where one indicates a popular revolt and zero otherwise.
#' \item counter. A dummy variable where one indicates a counter-coup and zero otherwise.
#' \item noharm. A dummy variable where one indicates the deposed executive was not injured or killed during the coup event and zero otherwise.
#' \item injured. A dummy variable where one indicates the deposed executive was injured during the coup event and zero otherwise.
#' \item killed. A dummy variable where one indicates the deposed executive was killed during the coup event and zero otherwise.
#' \item harrest. A dummy variable where one indicates the deposed executive was placed under house arrest and zero otherwise.
#' \item jailed. A dummy variable where one indicates the deposed executive was arrested, detained or jailed and zero otherwise.
#' \item tried. A dummy variable where one indicates the deposed executive was tried and zero otherwise.
#' \item fled. A dummy variable where one indicates the deposed executive fled the country and zero otherwise.
#' \item exile. A dummy variable where one indicates the deposed executive was banished from the country and zero otherwise.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name coups
#' @usage data(coups)
#' @format A (tibble) data frame with 981 rows and 22 variables.
#' @source Peyton, Buddy, Joseph Bajjalieh, Dan Shalmon, Michael Martin, Jonathan Bonaguro, and Emilio Soto. 2023. Cline Center Coup d'État Project Dataset. Cline Center for Advanced Social Research. V.2.1.2. February 23. University of Illinois Urbana-Champaign.
"coups"

#' Immigration data from Twelfth Census of the United States (1900)
#'
#' This dataset is a transcribed version of the data from Table 35 of the Twelfth Census of the United States, completed in 1900. The data provide information on the foreign born in major metro areas around the US. Data was transcribed by Stacker Media.
#' The variables are as follows:
#'
#' \itemize{
#' \item city. City name.
#' \item state. Name of state.
#' \item total_foreign_born. total foreign born population in the city (1900).
#' \item columns 3-49. Foreign born population from the indicated group.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name census
#' @usage data(census)
#' @format A (tibble) data frame with 161 rows and 49 variables.
#' @source Stacker media: \url{https://github.com/stacker-media/data/tree/main/1900-census-immigrant-city}
"census"

#' World Bank Informality Data
#'
#' A panel dataset containing data from World Bank indicators on urbanization and
#' informality in select Latin America and the Caribbean countries (1960-2019).
#' The variables are as follows:
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
#' A cross-sectional dataset containing information on the sale of provincial governorships by the Spanish Crown in #' Peru during the 17th and 18th century, as well as province-level demographic and economic data. The dataset is ' from Guardado (2018).
#' The variables are as follows:
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
#' @name colony
#' @usage data(colony)
#' @format A (tibble) data frame with 632 rows and 36 variables.
#' @source Guardado, J. (2018). Office-selling, corruption, and long-term development in Peru. American Political Science Review, 112(4), 971-995.
"colony"


#' Data on Sale of Provincial Governorships in Peru, 17th-18th century, and Contemporary Outcomes
#'
#' A dataset linking information on the sale of provincial governorships by the Spanish Crown in Peru during the 17th and 18th century with contemporary development outcomes. The dataset is from Guardado (2018).
#' The variables are as follows:
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
#' @name colony_long
#' @usage data(colony_long)
#' @format A (tibble) data frame with 14,494 rows and 90 variables.
#' @source Guardado, J. (2018). Office-selling, corruption, and long-term development in Peru. American Political Science Review, 112(4), 971-995.
"colony_long"


#' Varieties of Democracy Indicators
#'
#' A dataset from the Varieties of Democracy (V-DEM) project that characterizes
#' the different dimensions of democracy across countries worldwide.
#' The variables are as follows:
#'
#' \itemize{
#' \item country. Country.
#' \item year. Year.
#' \item v2x_egaldem. To what extent is the ideal of egalitarian democracy achieved? . Interval, from low to high (0-1).
#' \item v2x_delibdem. To what extent is the ideal of deliberative democracy achieved? . Interval, from low to high (0-1).
#' \item v2x_partipdem. To what extent is the ideal of participatory democracy achieved? . Interval, from low to high (0-1).
#' \item v2x_libdem. To what extent is the ideal of liberal democracy achieved? . Interval, from low to high (0-1).
#' \item v2x_polyarchy. To what extent is the ideal of electoral democracy in its fullest sense achieved? . Interval, from low to high (0-1).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name vdem
#' @usage data(vdem)
#' @format A (tibble) data frame with 27,734 rows and 7 variables.
#' @source The Varieties of Democracy (V-DEM) project, via: \url{https://github.com/vdeminstitute/vdemdata}
"vdem"


#' Economic and Population Panel Data for Latin America
#'
#' A country-year panel dataset from varied sources on economic and demographic indicators in Latin America.
#' The variables are as follows:
#'
#' \itemize{
#' \item country. Name of country.
#' \item year. Year.
#' \item e_cow_exports. What is the total value of a country's exports? . Barbieri and Keshk (2016).
#' \item e_cow_imports. What is the total value of a country's imports? . Barbieri and Keshk (2016).
#' \item e_migdppc. What is the GDP per capita? . The Maddison Project Database (2018)
#' \item e_miinflat. What is the annual inflation rate? . Clio Infra (clio-infra.eu), based on Arroyo Abad, Davies and van Zanden (N.d.),
#' Montevideo- Oxford Latin America Economic History Database (http://moxlad.fcs.edu.uy/es/basededatos.html), De Zwart (2011a), De Zwart (2011b),
#' Reinhart and Rogoff (2011), Santing (N.d.), World Bank (2013).
#' \item e_total_oil_income_pc. What is the real value of a country's petroleum production? . Haber and Menaldo (2011).
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
#' @source The Varieties of Democracy (V-DEM) project, via: \url{https://github.com/xmarquez/vdem}
"gdp"


#' Race and Colorism Survey Data from LAPOP
#'
#' Survey data on race and colorism in Colombia, Brazil, Mexico, Guatemala,
#' and the Dominican Republic, from LAPOP, 2014 wave.
#' The variables are as follows:
#' \itemize{
#' \item r_id. Respondent ID.
#' \item pais. Country.
#' \item q2. Age.
#' \item sex. Sex.
#' \item etid. Ethnicity.
#' \item ed. Years of schooling (0 to 18+ years)
#' \item colorr. Skin color (1 = lightest, 11 = darkest; see LAPOP color palette).
#' \item q10new_14. Monthly household income (0 = no income, 16 = highest income; see LAPOP).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name race
#' @usage data(race)
#' @format A (tibble) data frame with 7,557 rows and 8 variables.
#' @source Latin American Public Opinion Project.
"race"


#' Data on Land Invasions in Brazil
#'
#' Data on land invasions in Brazil, at the municipal level, from Hidalgo et. al (2010).
#' The variables are as follows:
#' \itemize{
#' \item ext_pov. Extreme Poverty (Percent), in 1991
#' \item landgini. Land Gini
#' \item occs. Land Occupations, aggregated over 1988-2004
#' \item logarea. Log (Land Area)
#' \item logfam. Log (Families in Land Occupations), aggregated over 1988-2004
#' \item logpop. Log (Population), in 1991
#' }
#'
#' @docType data
#' @keywords datasets
#' @name invasions
#' @usage data(invasions)
#' @format A (tibble) data frame with 4,062 rows and 7 variables.
#' @source Hidalgo, F. D., Naidu, S., Nichter, S., & Richardson, N. (2010).
#' Economic determinants of land invasions. The Review of Economics and Statistics, 92(3), 505-523.
"invasions"


#' Data on Income and Household Assets in Honduras, 2018
#'
#' Survey data on income, household assets, and other markers of wealth/poverty in Honduras.
#' The variables are as follows:
#' \itemize{
#' \item r1. Television in Home
#' \item r3. Refrigerator in Home
#' \item r4. Landline in Home
#' \item r4a. Cellular Telephone in Home
#' \item r5. Number of Vehicles at the House
#' \item r6. Washing Machine in Home
#' \item r7. Microwave Oven in Home
#' \item r8. Owns Motorcycle
#' \item r12. Drinking water in Home
#' \item r14. Indoor Bathroom in Home
#' \item r15. Computer in Home
#' \item r16. Flat Panel TV in Home
#' \item r18. Internet Service in Home
#' \item ur. Urban/Rural
#' \item ed. Years of Schooling (0 to 18+ years)
#' \item q10new_18. Monthly Household Income (0 = no income, 16 = highest income; see LAPOP).
#' \item q14. Intends to Live or Work Abroad
#' \item fs2. Has Run Out of Food in the Last 3 Months
#' \item fs8. Has Gone without Meals in the Last 3 Months
#' \item wf1. Receives Government Assistance
#' }
#'
#' @docType data
#' @keywords datasets
#' @name wealth
#' @usage data(wealth)
#' @format A (tibble) data frame with 1,560 rows and 20 variables.
#' @source Latin American Public Opinion Project. Honduras, 2018.
"wealth"


#' Data on Crime Victimization in Latin America, 2018
#'
#' 2018 LAPOP survey of experiences with and exposure to crime in select Latin American countries.
#' The variables are as follows:
#' \itemize{
#' \item pais. Country.
#' \item ed. Respondent years of schooling (0 to 18+ years).
#' \item jc10. Agreement with: "a coup is justified when crime is high".
#' \item aoj11. Perception of neighborhood insecurity.
#' \item q1. Respondent sex.
#' \item aoj12. Confidence that judiciary will punish the guilty.
#' \item b18. Trust in national police (1 = not at all, 7 = a lot).
#' \item infrax. Perception of police response time.
#' \item e16. Approval of vigilante justice (1 = strongly disapprove, 10 = strongly approve).
#' \item aoj22. Opinion on the best approach to reduce crime.
#' \item q3c. Respondent religion.
#' \item q5b. Importance of religion to respondent.
#' \item q10new_14. Monthly household income (0 = no income, 16 = highest income; see LAPOP codebook).
#' \item etid. Ethnicity.
#' \item vic1ext. Was respondent a victim of a crime in the last 12 months? (1 = yes, 0 = no).
#' \item vicbar7. Have there been any murders in the last 12 months in your neighborhood? (1 = yes, 0 = no).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name crime
#' @usage data(crime)
#' @format A (tibble) data frame with 24,308 rows and 16 variables.
#' @source Latin American Public Opinion Project. Wave: 2018.
"crime"


#' Movies data
#'
#' A sample of movies and their characteristics from IMDB (1910-2016).
#' The variables are as follows:
#' \itemize{
#' \item title. Name of the movie.
#' \item year. Year the movie was released.
#' \item decade. Decade the movie was released (factor).
#' \item director. Name of the movie's director.
#' \item genre1. The movie's first listed genre.
#' \item genre2. The movie's second listed genre (if any).
#' \item genre3. The movie's third listed genre (if any).
#' \item duration. Duration of movie (in minutes).
#' \item gross. How much the movie grossed in theaters (in USD).
#' \item budget. How much the movie cost to make (in USD).
#' \item imdb_score. The movie's average IMDB rating (0-10).
#' \item color. Whether the movie is color or black and white.
#' \item content_rating. The movie's parental advisory rating.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name movies
#' @usage data(movies)
#' @format A (tibble) data frame with 3,234 rows and 13 variables.
#' @source IMDB via Kaggle.
"movies"


#' Pokemon data
#'
#' A dataset containing the characteristics of 800+ Pokemon.
#' The variables are as follows:
#' \itemize{
#' \item type1. Pokemon primary type.
#' \item type2. Pokemon secondary type.
#' \item height_m. Height in meters.
#' \item weight_kg. Weight in kilograms.
#' \item capture_rate. Measure of how easy it is to capture the Pokemon. Higher catch rates mean that the Pokémon is easier to catch, up to a maximum of 255.
#' \item hp. Determines how much damage a Pokémon can receive before fainting.
#' \item attack. Determines the power of a physical move.
#' \item defense. Determines how much damage a Pokemon receives when it is hit with a physical move.
#' \item sp_attack. Determines how much damage a Pokemon deals when using a special move.
#' \item sp_defense. Determines how much damage a Pokemon receives when it is hit with a special move.
#' \item speed. Determines the order of Pokémon that can act in battle.
#' \item generation. A grouping of the Pokémon games that separates them based on the Pokémon they include.
#' \item is_legendary. Whether the Pokemon is legendary (1 = yes, 0 = no).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name pokemon
#' @usage data(pokemon)
#' @format A (tibble) data frame with 801 rows and 14 variables.
#' @source Kaggle.
"pokemon"


#' iCasualties data on US fatalities in Iraq and Afghanistan
#'
#' Data on American soldier fatalities during the US invasion of Iraq and Afghanistan, collected by iCasualties. Note: Data here may not reflect most updated numbers.
#' The variables are as follows:
#' \itemize{
#' \item date. Date of death.
#' \item name. Name of soldier.
#' \item rank. Soldier's rank.
#' \item branch. Branch of the army, navy, air force, or other entity that soldier was part ofc.
#' \item age. Age at time of death.
#' \item country. Country where soldier died.
#' \item province. Province where soldier died.
#' \item where. City or locale where soldier died.
#' \item source. Source of death (friendly vs hostile).
#' \item cause. Cause of death.
#' \item state. Home state of soldier.
#' \item city. Home city/town of soldier.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name fatal
#' @usage data(fatal)
#' @format A (tibble) data frame with 7,029 rows and 12 variables.
#' @source iCasualties.org
"fatal"


#' American Voter Bot data
#'
#' A sample of respondents from the Cooperative Election Survey. Inspired by the Twitter account "American Voter Bot".
#' The variables are as follows:
#' \itemize{
#' \item state. Respondent home state.
#' \item sex. Respondent sex.
#' \item age. Respondent age.
#' \item educ. Respondent highest educational attainment.
#' \item race. Respondent race.
#' \item pid7. Respondent ideological self-placement (7-point scale).
#' \item ideo5. Respondent ideological self-placement (5-point scale).
#' \item religion. Respondent religion.
#' \item votechoice. Respondent vote choice during 2020 election.
#' \item hispanic. Is respondent Hispanic?
#' \item know_governor. Respondent answer to which party they believe their current governor belongs to. A measure of political knowledge.
#' \item conceal. Support or oppose: "Make it easier for people to obtain concealed carry permits?"
#' \item prochoice. Support or oppose: "Always allow a woman to obtain an abortion as a matter of choice."
#' \item cleanair. Support or oppose: "Strengthen the Environmental Protection Agency enforcement of the Clean Air Act and Clean Water Act even if it costs U.S. jobs".
#' \item wall. Support or oppose: "Increase spending on border security by $25 billion, including building a wall between the U.S. and Mexico."
#' \item mandmin. Support or oppose: "Eliminate mandatory minimum sentences for non- violent drug offenders."
#' \item aca. Support or oppose: "Repeal the entire Affordable Care Act."
#' \item minwage. Support or oppose: "Raise the minimum wage to $15 an hour."
#' \item newsint. How often Respondent says they follow what's going on in government and public affairs.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name bot
#' @usage data(bot)
#' @format A (tibble) data frame with 61,000 rows and 19 variables.
#' @source 2020 Cooperative Election Survey.
"bot"

#' US County Election Data
#'
#' County-level data with electoral results from 2012, 2016, and 2020. Note: some 2020 results based on estimates.
#' The variables are as follows:
#' \itemize{
#' \item fips. County FIPS ID.
#' \item name. Name of county.
#' \item state. State.
#' \item census_region. Region state belongs to according to Census.
#' \item pop. County population (2014).
#' \item female. Percent of county that is female (2013).
#' \item white. Percent of county that is white (2013).
#' \item black. Percent of county that is black (2013).
#' \item travel_time. Mean travel time to work (minutes), workers age 16+, 2009-2013.
#' \item land_area. County land area in square miles, 2010.
#' \item hh_income. Median household income, 2009-2013.
#' \item per_PARTY_2012. PARTY presidential vote, proportion, 2012.
#' \item per_PARTY_2016. PARTY presidential vote, proportion, 2016.
#' \item per_PARTY_2020. PARTY presidential vote, proportion, 2020.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name elections
#' @usage data(elections)
#' @format A (tibble) data frame with 3,152 rows and 17 variables.
#' @source Mostly a port of socviz::county_data.
"elections"

#' Interstate Trade
#'
#' State-year level Correlates of War data focusing on international trade, including imports, exports, and IGO membership.
#' The variables are as follows:
#' \itemize{
#' \item country. Name of country.
#' \item year. Year.
#' \item imports. Total imports of the state in current million USD.
#' \item exports. Total exports of the state in current million USD.
#' \item gdp. Estimated GDP in 2011 USD.
#' \item pop. Estimated population size.
#' \item land_borders. Number of countries bordered by land.
#' \item sea_borders. Number of countries bordered by sea.
#' \item min_cap_dist. Mininum distance to a foreign capital, in kilometers.
#' \item sum_igos. The sum of International Governmental Organizations for which the state is a member of any kind in a given year.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name trade
#' @usage data(trade)
#' @format A (tibble) data frame with 11,493 rows and 10 variables.
#' @source From the `peacesciencer` package.
"trade"

#' Conflict onset
#'
#' State-year level UCDP data focusing on conflict onset.
#' The variables are as follows:
#' \itemize{
#' \item country. Name of country.
#' \item year. Year.
#' \item onset. Did country experience at least one conflict onset this year? (1 = yes, 0 = no).
#' \item imports. Total imports of the state in current million USD.
#' \item exports. Total exports of the state in current million USD.
#' \item polyarchy. the Varieties of Democracy "polyarchy" estimate of a country's quality of electoral democracy.
#' \item milex. An estimate of military expenditures (in thousands).
#' \item milper. An estimate of the size of military personnel (in thousands) for the state.
#' \item cinc. The Composite Index of National Capability ("CINC") score. Roughly: a country's world share of military capability in that year.
#' \item gdp. Estimated GDP in 2011 USD.
#' \item pop. Estimated population size.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name conflict
#' @usage data(conflict)
#' @format A (tibble) data frame with 11,493 rows and 11 variables.
#' @source From the `peacesciencer` package.
"conflict"


#' US feeling thermometer data
#'
#' Feeling thermometer survey data on a variety of social groups in the USA. From from the July 2017 "Views of the Electorate" Research Survey.
#' The variables are as follows:
#' \itemize{
#' \item birth_year. Year respondent was born.
#' \item sex. Sex of respondent.
#' \item race. Race of respondent.
#' \item party_id. Respondent party identification (3 point).
#' \item educ. Highest level of educational attainment.
#' \item ft_GROUP. Feeling thermometer rating for GROUP (0 = feel very "cold" towards GROUP, 100 = feel very "warm" towards GROUP).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name therm
#' @usage data(therm)
#' @format A (tibble) data frame with 4,989 rows and 21 variables.
#' @source July 2017 "Views of the Electorate" Research Survey.
"therm"

#' Ethnicity, insurgency, and civil war dataset
#'
#' Replication data from the classic Fearon and Laitin (2003) study on the causes of civil wars.
#' The variables are as follows:
#' \itemize{
#' \item country. Name of country.
#' \item year. Year.
#' \item onset. Did country experience civil war onset this year? (1 = yes, 0 = no).
#' \item pop. Population, lagged one year.
#' \item polity2. Country's Polity2 score that year.
#' \item gdp_cap. GDP per capita, lagged one year, in thousands.
#' \item mtnest. Percent of country that is "mountainous".
#' \item oil. Does the country's oil exports exceed one third of export revenues? (1 = yes, 0 = no).
#' \item ef. Ethnic fractionalization index (the probability that two randomly drawn individuals in a country are from different ethnolinguistic group).
#' \item numlang.The number of distinct languages spoken by groups exceeding 1% the country's population.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name fearon
#' @usage data(fearon)
#' @format A (tibble) data frame with 6,610 rows and 10 variables.
#' @source From Fearon and Laitin (2003).
"fearon"



#' Dynamics of violence in civil war dataset
#'
#' Replication data from Kalyvas and Kocher (2009) on the characteristics of the Hamlet Evaluation System during the Vietnam War.
#' The variables are as follows:
#' \itemize{
#' \item hamlet_id. 9-digit Hamlet Evaluation System identifier.
#' \item month. Month.
#' \item selective_terror. Did Vietcong use selective violence? (1 = yes, 0 = no).
#' \item control. Degree of control between state and rebels in the hamlet.
#' \item bombs. Number of bomb sorties in hamlet.
#' \item urban. Is hamlet mostly urban? (1 = yes, 0 = no).
#' \item pop. Hamlet population.
#' \item border. Distance to closest international border.
#' \item dev_index. Development index (cannot find details on what this means).
#' \item buddhist. Predominantly Buddhist hamlet? (1 = yes, 0 = no).
#' \item vietnamese. Predominantly Vietnamese hamlet? (1 = yes, 0 = no).
#' }
#'
#' @docType data
#' @keywords datasets
#' @name vietnam
#' @usage data(vietnam)
#' @format A (tibble) data frame with 71,378 rows and 11 variables.
#' @source From Kalyvas and Kocher(2009).
"vietnam"


#' UCDP Geo-referenced Event Database
#'
#' A sample of the UCDP GED (version 21.1), information on violent events including casualty estimates.
#' The variables are as follows:
#' \itemize{
#' \item id. Unique event identifer.
#' \item year. Year event began.
#' \item month. Month event began.
#' \item day. Day event began.
#' \item country. Country of event.
#' \item type_of_violence. UCDP violence type.
#' \item conflict_name. Name of conflict.
#' \item side_a. Side A. See UCDP codebook.
#' \item side_b. Side B. See UCDP codebook.
#' \item longitude. Longitude.
#' \item latitude. Latitude.
#' \item low_death. Low estimate of number of deaths.
#' \item best_death. Best estimate of number of deaths.
#' \item high_death. High estimate of number of deaths.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name ged
#' @usage data(ged)
#' @format A (tibble) data frame with 176,579 rows and 14 variables.
#' @source UCDP GED Version 2.11.
"ged"

#' Data on state leaders, mostly from the Leader Experience, Attribute, and Decision (LEAD) data set.
#'
#' Leader-year data on biographical attributes of state leaders, including military experience, education, and health.
#' The variables are as follows:
#' \itemize{
#' \item country. Country.
#' \item gwcode. Gleditsch and Ward country code.
#' \item leader. Name of leader.
#' \item gender. Gender of leader.
#' \item year. Year.
#' \item yr_office. Years in office.
#' \item age. Age of leader.
#' \item edu. Educational attainment of leader.
#' \item mil_service. Does leader have military service? (1 = yes, 0 = no).
#' \item combat. Does leader have combat experience? (1 = yes, 0 = no).
#' \item rebel. Does leader have experience as part of a rebellion? (1 = yes, 0 = no).
#' \item yrs_exp. Previous years of experience in politics before becoming a leader.
#' \item phys_health. Does leader have physical health issues? (1 = yes, 0 = no).
#' \item mental_health. Does leader have mental health issues? (1 = yes, 0 = no).
#' \item will_force. Estimate of leader's willingness to use force.
#' \item will_force_sd. Standard deviation of estimate of leader's willingness to use force.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name leader
#' @usage data(leader)
#' @format A (tibble) data frame with 17,686 rows and 16 variables.
#' @source `peacesciencer`.
"leader"


#' Data on CO2 and Greenhouse Gas Emissions by Our World in Data
#'
#' Country-year data from "Our World in Data" on CO2 and Greenhouse gas emissions.
#' The variables are as follows:
#' \itemize{
#' \item country. Name of country.
#' \item year. Year.
#' \item population. Population of country.
#' \item gdp. Gross domestic product (2011).
#' \item co2. Annual production-based emissions of carbon dioxide (CO2), measured in million tonnes. This is based on territorial emissions, which do not account for emissions embedded in traded goods.
#' \item coal_co2. Annual production-based emissions of carbon dioxide (CO2) from coal, measured in million tonnes. This is based on territorial emissions, which do not account for emissions embedded in traded goods.
#' \item total_ghg. Total greenhouse gas emissions including land-use change and forestry, measured in million tonnes of carbon dioxide-equivalents.
#' \item methane. Total methane emissions including land-use change and forestry, measured in million tonnes of carbon dioxide-equivalents.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name climate
#' @usage data(climate)
#' @format A (tibble) data frame with 21,913 rows and 8 variables.
#' @source Our World in Data. \url{https://github.com/owid/co2-data}
"climate"


#' Data on Campaign Finance from the Database on Ideology, Money in Politics, and Elections (DIME).
#'
#' Candidate level data on money raised, spent, and other stuff during political campaigns, from the Database on Ideology, Money in Politics, and Elections (DIME).
#' The variables are as follows:
#' \itemize{
#' \item cycle. The election cycle/year, includes: 2012, 2016, 2018.
#' \item name. Name of candidate.
#' \item party. Party of candidate.
#' \item dwnom1. First dimension common-space DW-NOMINATE score. Based on joint scaling of the 1st to the 112th Congresses. More negative = more liberal, more positive = more conservative.
#' \item state. State.
#' \item district. District identifier.
#' \item seat. Senate or House election.
#' \item incumbent. Whether candidate is an incumbent or a challenger.
#' \item gender. Gender of candidate.
#' \item num_distinct_donors. Number of district donors that gave to the candidate in the election cycle.
#' \item total_receipts. Total dollars raised by candidate during an election cycle.
#' \item contribs_from_candidate. Total receipts from candidate contributions.
#' \item total_disbursements. Total campaign disbursements (in dollars) for the given election cycle.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name bonica
#' @usage data(bonica)
#' @format A (tibble) data frame with 9,787 rows and 13 variables.
#' @source The Database on Ideology, Money in Politics, and Elections (DIME).
"bonica"

#' ICE Administrative Arrests
#'
#' Data on ICE (Immigration and Customs Enforcement) administrative arrests, including information on apprehension circumstances, case status, and demographics. Likely duplicates have been removed.
#' The variables are as follows:
#'
#' \itemize{
#' \item apprehension_date. Date of apprehension.
#' \item apprehension_state. State where apprehension took place.
#' \item apprehension_aor. ICE Area of Responsibility for the apprehension.
#' \item final_program. ICE program under which the arrest was made.
#' \item final_program_group. Broader program group.
#' \item apprehension_method. Method of apprehension (e.g., CAP Federal Incarceration, At-Large).
#' \item apprehension_criminality. Criminality category (1 = Convicted Criminal, 2 = Pending Criminal Charges, 3 = Other Immigration Violator).
#' \item case_status. Current case status (e.g., Deported/Removed, Active).
#' \item case_category. Detailed case category.
#' \item departed_date. Date of departure from the US (if applicable).
#' \item departure_country. Country of departure/removal.
#' \item final_order_yes_no. Whether a final order of removal has been issued (YES/NO).
#' \item final_order_date. Date of final order of removal.
#' \item birth_year. Year of birth.
#' \item citizenship_country. Country of citizenship.
#' \item gender. Gender.
#' \item apprehension_site_landmark. Landmark or location description of apprehension site.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name ice_arrests
#' @usage data(ice_arrests)
#' @format A (tibble) data frame with 362,202 rows and 17 variables.
#' @source Deportation Data Project. \url{https://deportationdata.org/}
"ice_arrests"

#' ICE Detention Facility Daily Population
#'
#' Daily population counts at ICE (Immigration and Customs Enforcement) detention facilities across the United States, broken down by gender and criminal status.
#' The variables are as follows:
#'
#' \itemize{
#' \item detention_facility. Name of the detention facility.
#' \item state. State where the facility is located.
#' \item date. Date of the population count.
#' \item n_detained. Total number of individuals detained.
#' \item n_detained_at_midnight. Number of individuals detained at midnight.
#' \item n_detained_male. Number of male individuals detained.
#' \item n_detained_female. Number of female individuals detained.
#' \item n_detained_convicted_criminal. Number of detained individuals who are convicted criminals.
#' \item n_detained_possibly_under_18. Number of detained individuals who are possibly under 18 years old.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name ice_detention
#' @usage data(ice_detention)
#' @format A (tibble) data frame with 661,928 rows and 9 variables.
#' @source Deportation Data Project. \url{https://deportationdata.org/}
"ice_detention"
