% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/data.R
\docType{data}
\name{affairs}
\alias{affairs}
\title{Affairs dataset}
\format{
A data.frame with 601 observations on 19 variables:
\itemize{
 \item \strong{id:} identifier
 \item \strong{male:} =1 if male
 \item \strong{age:} in years
 \item \strong{yrsmarr:} years married
 \item \strong{kids:} =1 if have kids
 \item \strong{relig:} 5 = very relig., 4 = somewhat, 3 = slightly, 2 = not at all, 1 = anti
 \item \strong{educ:} years schooling
 \item \strong{occup:} occupation, reverse Hollingshead scale
 \item \strong{ratemarr:} 5 = vry hap marr, 4 = hap than avg, 3 = avg, 2 = smewht unhap, 1 = vry unhap
 \item \strong{naffairs:} number of affairs within last year
 \item \strong{affair:} =1 if had at least one affair
 \item \strong{vryhap:} ratemarr == 5
 \item \strong{hapavg:} ratemarr == 4
 \item \strong{avgmarr:} ratemarr == 3
 \item \strong{unhap:} ratemarr == 2
 \item \strong{vryrel:} relig == 5
 \item \strong{smerel:} relig == 4
 \item \strong{slghtrel:} relig == 3
 \item \strong{notrel:} relig == 2
}

A (tibble) data frame with 601 rows and 9 variables.
}
\source{
\url{https://www.cengage.com/cgi-wadsworth/course_products_wp.pl?fid=M20b&product_isbn_issn=9781111531041}
}
\usage{
data(affairs)
}
\description{
Wooldridge Source: R.C. Fair (1978), “A Theory of Extramarital Affairs,” Journal of Political Economy 86, 45-61, 1978. Data originally from Professor Fair’s web cite at the Yale University Department of Economics. He originally obtained the data from a survey by Psychology Today.
}
\section{Notes}{
 I just copied this over from {wooldridge}.
}

\keyword{datasets}
