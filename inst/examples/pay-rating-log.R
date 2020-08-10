# 取对数的收入与评分散点图以及演员名称
par(mfrow = c(1, 2), mar = c(3.2, 3.6, .05, .05))
plot(log10(pay) ~ rating, data = tvearn, pch = 19)
plot(log10(pay) ~ rating, data = tvearn, pch = 20,
     ylab = "", col = "red")
library(maptools)
with(tvearn, pointLabel(rating, log10(pay), labels = actor,
                        cex = .6, col = "#00000099", xpd = TRUE))
