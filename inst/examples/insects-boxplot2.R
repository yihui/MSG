# ggplot2 绘制昆虫数目箱线图
data(InsectSprays)
library(ggplot2)
p = ggplot(aes(y = count, x = spray), data = InsectSprays) +
  geom_boxplot(outlier.shape = 4) +
  labs(x = "杀虫剂", y = "频数") +
  coord_flip()
print(p)
