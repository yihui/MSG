# 基础作图法绘制三组双峰数据的小提琴图比较
library(vioplot)
f <- function(mu1, mu2) c(rnorm(300, mu1, 0.5), rnorm(200, mu2, 0.5))
x1 <- f(0, 2)
x2 <- f(2, 3.5)
x3 <- f(0.5, 2)
vioplot(x1, x2, x3,
        horizontal = TRUE, col = "bisque", names = LETTERS[1:3])
