# 基础作图法绘制 LMS 回归的稳健性及其缺点
library(MASS)
olsLms <- function(x, y, l.col = c("red", "blue"),
                   l.lty = c(1, 2), ...) {
  plot(x, y, ...)
  abline(lm(y ~ x), col = l.col[1], lty = l.lty[1])
  abline(lqs(y ~ x, method = "lqs"), col = l.col[2], lty = l.lty[2])
  legend("topleft",
         legend = c("OLS", "LMS"), col = l.col,
         lty = l.lty, bty = "n")
}
par(mar = c(4.5, 4.5, 1, 0.2), mfrow = c(1, 2), pch = 20)
olsLms(x1, y1)
olsLms(x2, y2, cex = c(rep(1, 50), rep(0.1, 500)))
