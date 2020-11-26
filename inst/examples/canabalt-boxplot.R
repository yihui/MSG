# ggplot2 绘制“末日狂奔”游戏得分在不同游戏平台以及死因下的比较
library(MSG)
library(ggplot2)
library(patchwork)
data(canabalt, package = "MSG")
canabalt_g1 = ggplot(canabalt) +
  geom_boxplot(aes(device, score)) +
  labs(x = "设备", y = "得分") +
  coord_flip()
canabalt_g2 = ggplot(canabalt) +
  geom_boxplot(aes(reorder(death, score, median), score)) +
  labs(x = "死因", y = "得分") +
  coord_flip()
print(canabalt_g1 / canabalt_g2)
