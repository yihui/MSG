% Please edit documentation in R/MSG-package.R
\docType{data}
\name{tukeyCount}
\alias{tukeyCount}
\title{Results of a Simulation to Tukey's Fast Test}
\format{A data frame with 10000 observations on the following 3 variables.
  \describe{ \item{pvalue.t}{P-values of t test} \item{pvalue.w}{P-values of
  Wilcoxon test} \item{count}{Tukey's counts} }}
\source{
Simulation; see the Examples section below.
}
\description{
For the test of means of two samples, we calculated the P-values and recorded
the counts of Tukey's rule of thumb.
}
\details{
See the reference for details.
}
\examples{
data(tukeyCount)

## does Tukey's rule of thumb agree with t test and Wilcoxon test?
with(tukeyCount, {
    ucount = unique(count)
    stripchart(pvalue.t ~ count, method = "jitter", jitter = 0.2, pch = 19, 
        cex = 0.7, vertical = TRUE, at = ucount - 0.2, col = rgb(1, 0, 0, 0.2), 
        xlim = c(min(count) - 1, max(count) + 1), xaxt = "n", xlab = "Tukey Count", 
        ylab = "P-values")
    stripchart(pvalue.w ~ count, method = "jitter", jitter = 0.2, pch = 21, 
        cex = 0.7, vertical = TRUE, at = ucount + 0.2, add = TRUE, col = rgb(0, 
            0, 1, 0.2), xaxt = "n")
    axis(1, unique(count))
    lines(sort(ucount), tapply(pvalue.t, count, median), type = "o", pch = 19, 
        cex = 1.3, col = "red")
    lines(sort(ucount), tapply(pvalue.w, count, median), type = "o", pch = 21, 
        cex = 1.3, col = "blue", lty = 2)
    legend("topright", c("t test", "Wilcoxon test"), col = c("red", "blue"), 
        pch = c(19, 21), lty = 1:2, bty = "n", cex = 0.8)
})

if (interactive()) {
    
    ## this is how the data was generated
    set.seed(402)
    n = 30
    tukeyCount = data.frame(t(replicate(10000, {
        x1 = rweibull(n, runif(1, 0.5, 4))
        x2 = rweibull(n, runif(1, 1, 5))
        c(t.test(x1, x2)$p.value, wilcox.test(x1, x2)$p.value, with(rle(rep(0:1, 
            each = n)[order(c(x1, x2))]), ifelse(head(values, 1) == tail(values, 
            1), 0, sum(lengths[c(1, length(lengths))]))))
    })))
    colnames(tukeyCount) = c("pvalue.t", "pvalue.w", "count")
    
}
}
\references{
D. Daryl Basler and Robert B. Smawley. Tukey's Compact versus
  Classic Tests. \emph{The Journal of Experimental Education}, Vol. 36, No.
  3 (Spring, 1968), pp. 86-88
}
