# 基于 rgl 包绘制的中国地势图
# 读入地势数据
library(rgl)
mat <- as.matrix(read.csv(
  system.file("extdata", "ChinaGeoMap.csv", package = "MSG")))
x <- 20 * (1:nrow(mat))
y <- 20 * (1:ncol(mat))
z <- 0.05 * mat
persp3d(x, y, z, xlab = "", ylab = "", zlab = "",
        col = "green", aspect = "iso", axes = FALSE, box = FALSE)
