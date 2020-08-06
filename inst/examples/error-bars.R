# 误差线图的弊端
set.seed(321)
par(mfrow = c(1, 2), mar = c(4, 4, .5, .1))
y = c(runif (20), c(.43, .54), c(.6, runif (9, .3, .4)),
       c(runif (6, .5, .6) - .12, runif (4, .15, .22) + .12)) - .2
x = factor(rep(LETTERS[1:4], c(20, 2, 10, 10)))
m = tapply(y, x, mean)
mid = barplot(m, col = 1:4, ylim = c(0, .4))[, 1]
s = 2 * tapply(y, x, sd) / sqrt(table(x))
arrows(mid, m - s, mid, m + s, code = 2, col = 1:4, angle = 90, length = .15)
stripchart(y ~ x, vertical = TRUE, method = "jitter", pch = 20)
