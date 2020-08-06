# 正态分布密度函数公式的表示
plot(seq(-3, 3, 0.1), dnorm(seq(-3, 3, 0.1)), type = "l", xlab = "x",
     ylab = expression(phi(x)))
text(-3, 0.37, adj = c(0, 1), cex = 1.2,
     expression(phi(x) == frac(1, sqrt(2 * pi)) ~ e^-frac(x^2, 2)))
arrows(-2, 0.27, -1.3, dnorm(-1.3) + 0.02)
abline(v = qnorm(0.95), lty = 2)
text(0, dnorm(qnorm(0.95)),
     expression(integral(phi(x) * dx, -infinity, 1.65) %~~% 0.95))
