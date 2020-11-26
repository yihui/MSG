# 使用 `stat_density()` 函数构建的小提琴图
library(ggplot2)
p = ggplot(diamonds, aes(x = price)) +
  stat_density(aes(ymax = ..density.., ymin = -..density..),
               geom = "ribbon", position = "identity") +
  labs(x = "价格", y = "分布密度")
print(p)
