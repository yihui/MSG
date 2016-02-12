% Please edit documentation in R/MSG-package.R
\docType{data}
\name{canabalt}
\alias{canabalt}
\title{The scores of the game Canabalt from Twitter}
\description{
The scores of the game Canabalt from Twitter
}
\examples{
library(ggplot2)
data(canabalt)
print(qplot(device, score, data = canabalt))
print(qplot(reorder(death, score, median), score, data = canabalt, geom = "boxplot") + 
    coord_flip())
}
\references{
\samp{http://www.neilkodner.com/2011/02/visualizations-of-canabalt-scores-scraped-from-twitter/}
(the URL is not longer accessible)
}
