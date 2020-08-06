# ggplot2 绘制昆虫数目箱线图
library(ggplot2)
data(InsectSprays)
p <- ggplot(aes(y = count, x = spray), data = InsectSprays) +
  geom_boxplot(outlier.shape = 4) +
  coord_flip()
print(p)
