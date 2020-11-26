# ggplot2 绘制喷泉间隔时间的正态分布 QQ 图
library(ggplot2)
library(qqplotr)
library(patchwork)
data(geyser, package = "MASS")
geyser$waiting_scaled = scale(geyser$waiting)
qq1 = ggplot(data = geyser, mapping = aes(sample = waiting_scaled)) +
  coord_fixed(ratio = 1, xlim = c(-3, 3), ylim = c(-3,3)) +
  geom_abline(aes(intercept = 0, slope = 1), color = "blue") +
  stat_qq_point() +
  labs(x = "理论分位数", y = "实际分位数")
qq2 = ggplot(aes(waiting_scaled), data = geyser) +
  geom_density() +
  stat_function(mapping = aes(x), data = data.frame(x = c(-3, 3)),
                fun = dnorm, n = 101, args = list(mean = 0, sd = 1),
                linetype = 2) +
  labs(x = "间隔时间（标准化）", y = "分布密度")
print(qq1 | qq2)
