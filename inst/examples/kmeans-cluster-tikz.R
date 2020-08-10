# 不存在聚类的 K-Means 聚类散点图和 alpha 凸包
set.seed(320)
par(mfrow = c(1, 2))
x = matrix(rnorm(200), ncol = 2)
plot(x, pch = c(4, 19)[kmeans(x, centers = 2)$cluster],
     xlab = "$x_1$", ylab = "$x_2$")
library(alphahull)
plot(ahull(x, alpha = 0.4), xlab = "$x_1$", ylab = "$x_2$")
box()
