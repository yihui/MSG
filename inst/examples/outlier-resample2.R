# ggplot2 绘制用部分抽样方法诊断多个离群点
library(ggplot2)
library(patchwork)

set.seed(123)
# 生成随机数并插入两个离群点
x <- c(rnorm(100), 20, 21)
y <- c(rnorm(100), 20, 24)
fit <- lm(y ~ x) # y 对 x 做回归

# 对数据抽样 100 次，分别回归并记录斜率
betaSim <- numeric(100)
for (i in 1:100) {
  idx <- sample(c(TRUE, FALSE), length(x), replace = TRUE,
                prob = c(0.6, 0.4))
  betaSim[i] <- coef(update(fit, subset = idx))[2]
}

df <- data.frame(x, y)
oc1 <- ggplot(df, aes(x, y)) + geom_point() +
  geom_smooth(method = "lm", fullrange = TRUE)

df2 <- data.frame(y = cooks.distance(lm(y ~ x)))
df2$Index <- 1:nrow(df2)
oc2 <- ggplot(df2, aes(Index, y)) + geom_point() +
  ylab("Cook's distance")

oc3 <- ggplot() + geom_point(aes(x, y), df) +
  geom_smooth(aes(x, y), df[1:60, ], method = "lm", fullrange = TRUE)

df4 <- data.frame(y = betaSim)
df4$Index <- 1:nrow(df4)
oc4 <- ggplot(df4, aes(Index, y)) + geom_point() + ylab("betaSim")

print((oc1 | oc2) / (oc3 | oc4))
