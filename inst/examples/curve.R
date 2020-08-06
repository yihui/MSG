# 基础作图法绘制一元函数曲线图
par(par(mar = c(4.5, 4, 0.2, 0.2)), mfrow = c(2, 1))
chippy <- function(x) sin(cos(x) * exp(-x / 2))
curve(chippy, -8, 7, n = 2008, xlab = "x", ylab = "chippy(x)")
curve(sin(x) / x, from = -20, to = 20, n = 200,
      xlab = "t", ylab = expression(phi*X(t)))
