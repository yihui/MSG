# 随机打乱散点图中的点的位置
p = ggplot(aes(x = Petal.Length, y = Petal.Width), data = iris) +
  geom_point() +
  geom_jitter(color = "red") # 对比随机打乱的散点
print(p)
