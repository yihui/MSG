# 基础作图法绘制汽车数据的二维箱线图和密度等高图
# 数据来自 rpart 包中的 car.test.frame
data(car.test.frame, package = "rpart")
library(aplpack, warn.conflicts = FALSE)
par(mfrow = c(1, 2), mar = c(4, 4, 0.1, 0.1), bty = "l")
car.wd <- with(car.test.frame, cbind(Weight, Disp.))
bagplot(car.wd, cex = 0.9)
box()

library(KernSmooth) # 二维核密度估计并画等高线图
est <- bkde2D(car.wd, apply(car.wd, 2, dpik))
with(est, {
  contour(x1, x2, fhat, xlab = "Weight", ylab = "Disp.",
          xlim = range(car.wd[, 1]), ylim = range(car.wd[, 2]))
  points(car.wd, pch = 16, cex = 0.9)})
