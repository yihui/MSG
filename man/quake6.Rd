\docType{data}
\name{quake6}
\alias{quake6}
\title{Earth quakes from 1973 to 2010}
\description{
  The time, location and magnitude of all the earth quakes
  with magnitude being greater than 6 since 1973.
}
\examples{
data(quake6)
library(ggplot2)
qplot(year, month, data = quake6) + stat_sum(aes(size = ..n..)) + 
    scale_size(range = c(1, 10))
}
\references{
  \url{http://cos.name/cn/topic/101510}
}
\keyword{datasets}
