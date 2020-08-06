# 与等高图对应的三维透视图
data(ChinaLifeEdu, package = "MSG")
library(KernSmooth)
est <- bkde2D(ChinaLifeEdu, apply(ChinaLifeEdu, 2, dpik))
par(mar = rep(0, 4)) # 继续前面的例子
persp(est$x1, est$x2, est$fhat, shade = 0.75, border = NA,
      col = "lightblue", phi = 20, theta = 15, box = FALSE)
