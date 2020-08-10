# ggplo2 绘制各种杀虫剂下昆虫数目的带状图
library(ggplot2)
data(InsectSprays)
p = ggplot(InsectSprays, aes(spray, count, color = spray)) +
  geom_boxplot(outlier.shape = NA) +
  geom_jitter(shape = 0) +
  theme(legend.position = "") +
  coord_flip()
print(p)
