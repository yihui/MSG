##' Modern Statistical Graphics.
##' Datasets and functions for the Chinese book ``Modern Statistical Graphics''.
##'
##' \tabular{ll}{ Package: \tab MSG\cr Type: \tab Package\cr License:
##' \tab GPL\cr LazyLoad: \tab yes\cr }
##'
##' @name MSG-package
##' @aliases MSG-package MSG
##' @docType package
##' @author Yihui Xie <xie@@yihui.name>
##' @keywords package
##' @importFrom RColorBrewer brewer.pal
##'
NULL


##' Random numbers containing a ``circle''.
##' The data was generated from two independent random varialbes (standard
##' Normal distribution) and further points on a circle were added to the data.
##' The order of the data was randomized.
##'
##' See the example section for the code to generate the data.
##'
##' \subsection{Format}{A data frame with 20000 observations on the
##' following 2 variables.  \describe{ \item{list("V1")}{the first
##' random variable with the x-axis coordinate of the circle}
##' \item{list("V2")}{the second random variable with the y-axis
##' coordinate of the circle} }}
##'
##' \subsection{Source}{\url{http://yihui.name/en/2008/09/to-see-a-circle-in-a-pile-of-sand/}}
##' @name BinormCircle
##' @docType data
##' @keywords datasets
##' @examples
##'
##' data(BinormCircle)
##'
##' ## original plot: cannot see anything
##' plot(BinormCircle)
##'
##' ## transparent colors (alpha = 0.1)
##' plot(BinormCircle, col = rgb(0, 0, 0, 0.1))
##'
##' ## set axes lmits
##' plot(BinormCircle, xlim = c(-1, 1), ylim = c(-1, 1))
##'
##' ## small symbols
##' plot(BinormCircle, pch = ".")
##'
##' ## subset
##' plot(BinormCircle[sample(nrow(BinormCircle), 1000), ])
##'
##' ## 2D density estimation
##' library(KernSmooth)
##' fit = bkde2D(as.matrix(BinormCircle), dpik(as.matrix(BinormCircle)))
##' # perspective plot by persp()
##' persp(fit$x1, fit$x2, fit$fhat)
##'
##' if (require('rgl')) {
##' # perspective plot by OpenGL
##' rgl.surface(fit$x1, fit$x2, fit$fhat)
##' # animation
##' M = par3d("userMatrix")
##' play3d(par3dinterp(userMatrix = list(M, rotate3d(M,
##'    pi/2, 1, 0, 0), rotate3d(M, pi/2, 0, 1, 0), rotate3d(M, pi,
##'    0, 0, 1))), duration = 20)
##' }
##'
##' ## data generation
##' x1 = rnorm(10000); y1 = rnorm(10000)
##' x2 = rep(0.5 * cos(seq(0, 2 * pi, length = 500)), 20)
##' y2 = rep(0.5 * sin(seq(0, 2 * pi, length = 500)), 20)
##' x = cbind(c(x1, x2), c(y1, y2))
##' BinormCircle = as.data.frame(round(x[sample(20000), ], 3))
##'
NULL


##' Life Expectancy and the Number of People with Higher Education in China (2005).
##'
##' This data contains the life expectancy and number of people with higher
##' education in the 31 provinces and districts in China (2005).
##'
##' \subsection{Format}{A data frame with 31 observations on the
##' following 2 variables. \describe{
##' \item{list("Life.Expectancy")}{Life expectancy}
##' \item{list("High.Edu.NO")}{Number of people with higher education}
##' }}
##'
##' \subsection{Source}{China Statistical Yearbook 2005. National
##' Bureau of Statistics.}
##' @name ChinaLifeEdu
##' @docType data
##' @keywords datasets
##' @examples
##'
##' data(ChinaLifeEdu)
##' x = ChinaLifeEdu
##' plot(x, type = "n", xlim = range(x[, 1]), ylim = range(x[, 2]))
##' u = par("usr")
##' rect(u[1], u[3], u[2], u[4], col = "antiquewhite",
##'     border = "red")
##' library(KernSmooth)
##' est = bkde2D(x, apply(x, 2, dpik))
##' contour(est$x1, est$x2, est$fhat, nlevels = 15, col = "darkgreen",
##'     add = TRUE, vfont = c("sans serif", "plain"))
##'
NULL


##' Export of US and China from 1999 to 2004 in US dollars.
##'
##' \subsection{Format}{A data frame with 13 observations on the
##' following 3 variables. \describe{ \item{list("Export")}{amount of
##' export} \item{list("Year")}{year from 1999 to 2004}
##' \item{list("Country")}{country: US or China} }}
##'
##' \subsection{Source}{\url{http://stat.wto.org}}
##' @name Export.USCN
##' @docType data
##' @keywords datasets
##' @examples
##'
##' data(Export.USCN)
##' par(mar = c(4, 4.5, 1, 4.5))
##' plot(1:13, Export.USCN$Export, xlab = "Year / Country",
##'     ylab = "US Dollars ($10^16)", axes = FALSE, type = "h",
##'     lwd = 10, col = c(rep(2, 6), NA, rep(4, 6)), lend = 1, panel.first = grid())
##' xlabel = paste(Export.USCN$Year, "\n", Export.USCN$Country)
##' xlabel[7] = ""
##' xlabel
##' abline(v = 7, lty = 2)
##' axis(1, at = 1:13, labels = xlabel, tick = FALSE, cex.axis = 0.75)
##' axis(2)
##' (ylabel = pretty(Export.USCN$Export * 8.27))
##' axis(4, at = ylabel/8.27, labels = ylabel)
##' mtext("Chinese RMB", side = 4, line = 2)
##' box()
##'
NULL


##' Percentage data in Chinese government websites.
##' This data was collected from Google by searching for percentages in Chinese
##' goverment websites.
##'
##' We can specify the domain when searching in Google. For this data, we used
##' \samp{site:gov.cn}, e.g. to search for \samp{87.53% site:gov.cn}.
##'
##' \subsection{Format}{A data frame with 10000 observations on the
##' following 4 variables.  \describe{ \item{list("percentage")}{a
##' numeric vector: the percentages} \item{list("count")}{a numeric
##' vector: the number of webpages corresponding to a certain
##' percentage} \item{list("round0")}{a logical vector: rounded to
##' integers?} \item{list("round1")}{a logical vector: rounded to the
##' 1st decimal place?} }}
##'
##' \subsection{Source}{Google (date: 2009/12/17)}
##' @name gov.cn.pct
##' @docType data
##' @keywords datasets
##' @examples
##'
##' data(gov.cn.pct)
##'
##' devAskNewPage(ask = TRUE)
##'
##' with(gov.cn.pct, {
##'     plot(count ~ percentage, type = "l")
##'     grid()
##'
##'     devAskNewPage(ask = FALSE)
##'
##'     for (i in 0:99) {
##'         plot(count ~ percentage, type = "l", xlim = i + c(0,
##'             1), panel.first = grid())
##'     }
##'
##'     devAskNewPage(ask = TRUE)
##'
##'     plot(count ~ percentage, pch = 20, col = rgb(0:1, 0, 0, c(0.07,
##'         1))[round0 + 1], log = "y")
##'     lines(lowess(gov.cn.pct[round0, 1:2], f = 1/3), col = "red",
##'         lwd = 2)
##'     lines(lowess(gov.cn.pct[!round0, 1:2], f = 1/3), col = "black",
##'         lwd = 2)
##'
##'     plot(count ~ percentage, pch = 20, col = rgb(0:1, 0, 0, c(0.07,
##'         1))[round1 + 1], log = "y")
##'     lines(lowess(gov.cn.pct[round1, 1:2], f = 1/3), col = "red",
##'         lwd = 2)
##'     lines(lowess(gov.cn.pct[!round1, 1:2], f = 1/3), col = "black",
##'         lwd = 2)
##' })
##'
NULL


##' Number of plants corresponding to altitude.
##' For each altitude, the number of plants is recorded.
##'
##' \subsection{Format}{A data frame with 600 observations on the
##' following 2 variables. \describe{ \item{list("altitude")}{altitude
##' of the area} \item{list("counts")}{number of plants} }}
##'
##' \subsection{Source}{
##' \url{http://cos.name/2008/11/lowess-to-explore-bivariate-correlation-by-yihui/}}
##' @name PlantCounts
##' @docType data
##' @keywords datasets
##' @examples
##'
##' ## different span for LOWESS
##' data(PlantCounts)
##' par(las = 1, mar = c(4, 4, 0.1, 0.1), mgp = c(2.2, 0.9, 0))
##' with(PlantCounts, {
##'     plot(altitude, counts, pch = 20, col = rgb(0, 0, 0, 0.5),
##'         panel.first = grid())
##'     for (i in seq(0.01, 1, length = 70)) {
##'         lines(lowess(altitude, counts, f = i), col = rgb(0, i,
##'             0), lwd = 1.5)
##'     }
##' })
##'
NULL


##' The differences of P-values in t test assuming equal or unequal variances.
##' Given that the variances of two groups are unequal, we compute the
##' difference of P-values assuming equal or unequal variances
##' respectively by simulation.
##'
##' See the Examples section for the generation of this data.
##'
##' \subsection{Source}{By simulation.}
##'
##' \subsection{Format}{A data frame with 1000 rows and 99 columns.}
##' @name t.diff
##' @docType data
##' @references Welch B (1947). ``The generalization of Student's
##' problem when several different population variances are
##' involved.'' Biometrika, 34(1/2), 28--35.
##' @keywords datasets
##' @examples
##' data(t.diff)
##' boxplot(t.diff, axes = FALSE, xlab = expression(n[1]))
##' axis(1)
##' axis(2)
##' box()
##'
##' ## reproducing the data
##' if (interactive()) {
##' set.seed(123)
##' t.diff = NULL
##' for (n1 in 2:100) {
##'     t.diff = rbind(t.diff, replicate(1000, {
##'         x1 = rnorm(n1, mean = 0, sd = runif(1, 0.5, 1))
##'         x2 = rnorm(30, mean = 1, sd = runif(1, 2, 5))
##'         t.test(x1, x2, var.equal = TRUE)$p.value - t.test(x1,
##'             x2, var.equal = FALSE)$p.value
##'     }))
##' }
##' t.diff = as.data.frame(t(t.diff))
##' colnames(t.diff) = 2:100
##' }
##'
NULL


##' Results of a Simulation to Tukey's Fast Test.
##' For the test of means of two samples, we calculated the P-values and
##' recorded the counts of Tukey's rule of thumb.
##'
##' See the reference for details.
##'
##' \subsection{Format}{ A data frame with 10000 observations on the
##' following 3 variables.  \describe{
##' \item{list("pvalue.t")}{P-values of t test}
##' \item{list("pvalue.w")}{P-values of Wilcoxon test}
##' \item{list("count")}{Tukey's counts} }}
##'
##' \subsection{Source}{Simulation; see the Examples section below.}
##' @name tukeyCount
##' @docType data
##' @references D. Daryl Basler and Robert B. Smawley. Tukey's Compact
##' versus Classic Tests. \emph{The Journal of Experimental
##' Education}, Vol. 36, No.  3 (Spring, 1968), pp. 86-88
##' @keywords datasets
##' @examples
##'
##' data(tukeyCount)
##'
##' ## does Tukey's rule of thumb agree with t test and Wilcoxon test?
##' with(tukeyCount, {
##'     ucount = unique(count)
##'     stripchart(pvalue.t ~ count, method = "jitter", jitter = 0.2,
##'         pch = 19, cex = 0.7, vertical = TRUE, at = ucount - 0.2,
##'         col = rgb(1, 0, 0, 0.2), xlim = c(min(count) - 1, max(count) +
##'             1), xaxt = "n", xlab = "Tukey Count", ylab = "P-values")
##'     stripchart(pvalue.w ~ count, method = "jitter", jitter = 0.2,
##'         pch = 21, cex = 0.7, vertical = TRUE, at = ucount + 0.2,
##'         add = TRUE, col = rgb(0, 0, 1, 0.2), xaxt = "n")
##'     axis(1, unique(count))
##'     lines(sort(ucount), tapply(pvalue.t, count, median), type = "o",
##'         pch = 19, cex = 1.3, col = "red")
##'     lines(sort(ucount), tapply(pvalue.w, count, median), type = "o",
##'         pch = 21, cex = 1.3, col = "blue", lty = 2)
##'     legend("topright", c("t test", "Wilcoxon test"), col = c("red",
##'         "blue"), pch = c(19, 21), lty = 1:2, bty = "n", cex = 0.8)
##' })
##'
##' if (interactive()) {
##'
##' ## this is how the data was generated
##' set.seed(402)
##' n = 30
##' tukeyCount = data.frame(t(replicate(10000, {
##'     x1 = rweibull(n, runif(1, 0.5, 4))
##'     x2 = rweibull(n, runif(1, 1, 5))
##'     c(t.test(x1, x2)$p.value, wilcox.test(x1, x2)$p.value, with(rle(rep(0:1,
##'         each = n)[order(c(x1, x2))]), ifelse(head(values, 1) ==
##'         tail(values, 1), 0, sum(lengths[c(1, length(lengths))]))))
##' })))
##' colnames(tukeyCount) = c("pvalue.t", "pvalue.w", "count")
##'
##' }
##'
NULL



##' Top TV earners.
##'
##' The pay per episode for actors as well as other information.
##' @name tvearn
##' @docType data
##' @keywords datasets
##' @examples data(tvearn)
##' plot(pay ~ rating, data=tvearn)
##' if (require('ggplot2')) {
##' qplot(pay,data=tvearn,geom='histogram',facets=gender~.,binwidth=20000)
##' qplot(rating,pay,data=tvearn,geom=c('jitter','smooth'),color=type)
##' }
NULL
