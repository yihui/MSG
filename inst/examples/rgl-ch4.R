# 用 rgl 包画出来的甲烷分子立体结构
library(rgl)
x = c(0, 0, 1, 1, 0.5)
y = c(1, 0, 1, 0, 0.5)
z = c(1, 0, 0, 1, 0.5)
plot3d(x, y, z,
       type = "s", xlab = "", ylab = "", zlab = "",
       box = FALSE, axes = FALSE, radius = c(rep(0.2, 4), 0.4),
       col = c(rep("blue", 4), "black")
)
ind = c(5, 1, 5, 2, 5, 3, 5, 4)
lines3d(x[ind], y[ind], z[ind], lwd = 2)
