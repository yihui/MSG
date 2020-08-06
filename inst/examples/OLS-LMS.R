# 基础作图法绘制 LMS 回归的稳健性及其缺点
library(MASS)
olsLms = function(x, y, l.col = c("red", "blue"),
                   l.lty = c(1, 2), ...) {
  plot(x, y, ...)
  abline(lm(y ~ x), col = l.col[1], lty = l.lty[1])
  abline(lqs(y ~ x, method = "lqs"), col = l.col[2], lty = l.lty[2])
  legend("topleft",
         legend = c("OLS", "LMS"), col = l.col,
         lty = l.lty, bty = "n")
}
x = runif (50)
y = 2 + 3 * x + rnorm(50)
# 插入一个离群点 (2, 50)
x1 = c(x, 2)
y1 = c(y, 50)
# 插入 500 个分布在数据中心的随机数
x2 = c(x, jitter(rep(mean(x), 500), 10))
y2 = c(y, jitter(rep(mean(y), 500), 10))
par(mar = c(4.5, 4.5, 1, 0.2), mfrow = c(1, 2), pch = 20)
olsLms(x1, y1)
olsLms(x2, y2, cex = c(rep(1, 50), rep(0.1, 500)))
