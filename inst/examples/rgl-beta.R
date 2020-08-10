# Beta 函数的三维透视图
library(rgl)
x = y = seq(1, 5, .1)
m = outer(x, y, function(a, b) beta(a, b))
persp3d(x, y, m, col = "green3", zlab = "Beta(x, y)")
