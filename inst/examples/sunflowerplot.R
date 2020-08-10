# 绘制鸢尾花花瓣长和宽的向日葵散点图
data(iris)
par(mar = c(4, 4, 0.2, 0.2))
sunflowerplot(iris[, 3:4], col = "gold", seg.col = "gold")
