# 任意离散化连续数据得到的不同结果
library(MSG)
set.seed(319)
x <- rnorm(100)
y <- rnorm(100)
par(mfrow = c(1, 2)) # 以下 cut_plot() 函数来自 MSG 包
cut_plot(x, y, c(-2.02, -0.9, -0.3, 1, 2, 2.5), col = "gray")
cut_plot(x, y, c(-2.02, 0, 0.25, 0.5, 2.8, 3), col = "gray")
