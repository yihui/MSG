# 钻石雕琢水平和对数价格的关系
library(ggplot2)
library(patchwork)
p = ggplot(aes(x = cut, y = log(price)), data = diamonds) +
  geom_boxplot()
print(p / (p + coord_flip()))
