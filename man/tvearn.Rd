\docType{data}
\name{tvearn}
\alias{tvearn}
\title{Top TV earners}
\description{
  The pay per episode for actors as well as other
  information.
}
\examples{
data(tvearn)
plot(pay ~ rating, data = tvearn)
library(ggplot2)
qplot(pay, data = tvearn, geom = "histogram", facets = gender ~ 
    ., binwidth = 20000)
qplot(rating, pay, data = tvearn, geom = c("jitter", 
    "smooth"), color = type)
}
\references{
  \url{http://flowingdata.com/2011/02/15/visualize-this-tvs-top-earners/}
}
\keyword{datasets}
