x = pmin(3, pmax(-3, stats::rnorm(50)))
y = pmin(3, pmax(-3, x + runif(50, -1, 1)))
xhist = hist(x, breaks = seq(-3, 3, 0.5), plot = FALSE)
yhist = hist(y, breaks = seq(-3, 3, 0.5), plot = FALSE)
top = max(c(xhist$counts, yhist$counts))
layout(matrix(c(2, 0, 1, 3), 2, 2, byrow = TRUE), c(3, 1), c(1, 3))
par(mar = c(2, 2, 1, 1))
plot(x, y, xlim = c(-3, 3), ylim = c(-3, 3), ann = FALSE)
abline(lm(y ~ x))
par(mar = c(0, 2, 1, 1))
barplot(xhist$counts, axes = FALSE, ylim = c(0, top), space = 0)
par(mar = c(2, 0, 1, 1))
barplot(yhist$counts, axes = FALSE, xlim = c(0, top), space = 0, horiz = TRUE)
