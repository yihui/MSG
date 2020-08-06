# 演员的薪酬直方图及薪酬与电视剧评分的散点图
library(ggplot2)
library(patchwork)
data(tvearn)
dh1 <- ggplot(aes(x = pay), data = tvearn) +
  geom_histogram(binwidth = 20000) +
  facet_grid(gender ~ .)
dh2 <- ggplot(aes(x = rating, y = pay, color = type), data = tvearn) +
  geom_jitter() +
  geom_smooth(method = "loess") +
  scale_y_continuous(
    labels = scales::unit_format(unit = "w", scale = 1e-4),
    breaks = seq(0, 125, 15) * 10^4
  ) +
  theme(legend.background = element_blank(), legend.position = c(0.1, 0.9))
print(dh1 / dh2)
