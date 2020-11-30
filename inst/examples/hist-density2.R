# ggplot2 绘制直方图与密度曲线的结合
library(ggplot2)
data(geyser, package = "MASS")
p = ggplot(aes(waiting), data = geyser) +
  labs(x = "间隔时间", y = "分布密度") +
  geom_histogram(breaks = seq(40, 110, by = 5), aes(y = ..density..))+
  geom_density(color = "blue", size = 1.2)
print(p)
