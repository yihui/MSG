\name{char_gen}
\alias{char_gen}
\title{Generate a matrix of similar characters}
\usage{
char_gen(x = c("V", "W"), n = 300, nrow = 10)
}
\arguments{
\item{x}{a character vector of length 2 (usually two similar characters)}

\item{n}{the total number of characters in the matrix}

\item{nrow}{the number of rows}
}
\value{
a character matrix on the screen
}
\description{
This function prints a matrix of characters which are very similar to each
other.
}
\examples{
char_gen()

char_gen(c("O", "Q"))
}
\author{
Yihui Xie <\url{http://yihui.name}>
}
