% Please edit documentation in R/MSG-package.R
\docType{data}
\name{assists}
\alias{assists}
\title{Assists between players in CLE and LAL}
\description{
The players in the rows assisted the ones in the columns.
}
\examples{
data(assists)

if (require("sna")) {
    set.seed(2011)
    gplot(assists, displaylabels = TRUE, label.cex = 0.7)
}
}
\references{
\url{http://www.basketballgeek.com/data/}
}
