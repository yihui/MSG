# ggplot2 绘制喷泉间隔时间的正态分布 QQ 图
data(geyser)
par(mfrow = c(1, 2), mar = c(4, 4, 0.2, 0.2))
geyser$waiting_scaled <- scale(geyser$waiting)
qqnorm(geyser$waiting_scaled, cex = 0.7, asp = 1, main = "")
abline(0, 1)
plot(density(geyser$waiting_scaled))
curve(dnorm, from = -3, to = 3, lty = 2, add = TRUE)
