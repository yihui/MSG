# ggplot2 绘制中国 31 地区国民预期寿命和高学历人数密度等高图
library(KernSmooth)
data(ChinaLifeEdu, package = "MSG")
par(mar = c(4, 4, 0.2, 0.2))
est = bkde2D(ChinaLifeEdu, apply(ChinaLifeEdu, 2, dpik))
contour(est$x1, est$x2, est$fhat, nlevels = 15, col = "darkgreen",
        vfont = c("sans serif", "plain"),
        xlab = "预期寿命", ylab = "高学历人数")
points(ChinaLifeEdu, pch = 20)
