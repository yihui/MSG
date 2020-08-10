# ggplot2 绘制 LMS 回归的稳健性及其缺点
library(ggplot2)
library(patchwork)
library(MASS)
gg_olsLms = function(df, lqs_xy){
  lqs = lqs(y ~ x, method = "lqs", data = df)
  df$y1 = predict(lqs)
  ggplot(df, aes(x, y)) +
    geom_point() +
    geom_smooth(aes(color = "OLS"), method = "lm", se = FALSE) +
    geom_line(aes(x = x, y = y1, color = "LMS")) +
    scale_color_manual(
      name="Model",
      values=c(OLS = "red", LMS = "blue")) +
    theme(legend.background = element_blank(),
          legend.position = c(0.1, 0.9))
}
x = runif (50)
y = 2 + 3 * x + rnorm(50)
# 插入一个离群点 (2, 50)
x1 = c(x, 2)
y1 = c(y, 50)
# 插入 500 个分布在数据中心的随机数
x2 = c(x, jitter(rep(mean(x), 500), 10))
y2 = c(y, jitter(rep(mean(y), 500), 10))
print(gg_olsLms(data.frame(x = x1, y = y1)) |
        gg_olsLms(data.frame(x = x2, y = y2)))
