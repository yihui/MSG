# 鸢尾花数据和黑莓树数据的调和曲线图
data("iris")
library(MSG)
iris.col = vec2col(iris$Species)
par(mfrow = c(2, 2))
par(mar = c(4, 4, 0.2, 0.2))
andrews_curve(iris[, 1:4], n = 50, col = iris.col,
              xlab = "$t$", ylab = "$f(t)$")
legend("topleft", col = unique(iris.col), lty = 1, bty = "n",
       legend = unique(iris$Species))
andrews_curve(iris[, c(3, 4, 2, 1)], n = 50, col = iris.col,
              xlab = "$t$", ylab = "$f(t)$")
andrews_curve(scale(iris[, 1:4]), n = 50, col = iris.col,
              xlab = "$t$", ylab = "$f(t)$")
x = andrews_curve(scale(trees), n = 50,
                   xlab = "$t$", ylab = "$f(t)$")
