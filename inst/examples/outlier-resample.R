# 基础作图法绘制用部分抽样方法诊断多个离群点
set.seed(123)
# 生成随机数并插入两个离群点
x = c(rnorm(100), 20, 21)
y = c(rnorm(100), 20, 24)
fit = lm(y ~ x) # y 对 x 做回归
# 对数据抽样 100 次，分别回归并记录斜率
betaSim = numeric(100)
for (i in 1:100) {
  idx = sample(c(TRUE, FALSE), length(x), replace = TRUE,
                prob = c(0.6, 0.4))
  betaSim[i] = coef(update(fit, subset = idx))[2]
}
# 仅用前 60 条数据做回归
fit1 = update(fit, subset = 1:60)
par(mar = c(4.1, 4.1, 0.5, 0.5), mfrow = c(2, 2), pch = 20)
plot(x, y, col = rgb(0, 0, 0, 0.5), xlab = "x", ylab = "y")
abline(fit)
plot(cooks.distance(fit), ylab = "Cook's distance")
plot(x, y, xlab = "x", ylab = "y",
     col = rgb(0, 0, 0, 0.5), pch = rep(20:21, c(60, 42)))
abline(fit1) # 部分抽样：前 60 条数据
plot(betaSim, ylab = expression(beta[1]))
