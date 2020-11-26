# 随机打乱散点图中的点的位置
data("iris")
library(ggplot2)
p = ggplot(aes(x = Petal.Length, y = Petal.Width), data = iris) +
  geom_point() +
  labs(x = "花瓣长度", y = "花瓣宽度") +
  geom_jitter(color = "red") # 对比随机打乱的散点
print(p)
