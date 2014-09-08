\name{andrews_curve}
\alias{andrews_curve}
\title{Draw Andrew's Curve}
\usage{
andrews_curve(x, n = 101, type = "l", lty = 1, lwd = 1, pch = NA, xlab = "t", 
    ylab = "f(t)", ...)
}
\arguments{
\item{x}{a data frame or matrix}

\item{n}{number of x-axis values at which f(t) is evaluated}

\item{type,lty,lwd,pch,xlab,ylab,...}{passed to
\code{\link[graphics]{matplot}}}
}
\value{
a matrix of coefficients for each observation at different t values
}
\description{
This function evaluates the transformation of the original data matrix for
\code{t} from \code{-pi} to \code{pi}, and uses \code{matplot} to draw the
curves.
}
\examples{
andrews_curve(iris[, -5], col = as.integer(iris[, 5]))
}
\author{
Yihui Xie <\url{http://yihui.name}>
}
\references{
\url{http://fedc.wiwi.hu-berlin.de/xplore/tutorials/mvahtmlnode9.html}
}
\seealso{
\code{\link[graphics]{matplot}}
}
