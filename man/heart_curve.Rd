% Please edit documentation in R/heart_curve.R
\name{heart_curve}
\alias{heart_curve}
\title{Draw a heart curve}
\usage{
heart_curve(n = 101, ...)
}
\arguments{
\item{n}{the number of points to use when calculating the coordinates of the
heart shape}

\item{...}{other arguments to be passed to \code{\link[graphics]{polygon}},
e.g. the color of the polygon (usually red)}
}
\description{
Calculate the coordinates of a heart shape and draw it with a polygon.
}
\examples{
heart_curve()
heart_curve(col = "red")
heart_curve(col = "pink", border = "red")
}
\author{
Yihui Xie <\url{http://yihui.name}>
}
