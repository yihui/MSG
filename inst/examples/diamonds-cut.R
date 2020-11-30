# 钻石雕琢水平和对数价格的关系
data("diamonds")
library(ggplot2)
library(patchwork)
levels(diamonds$cut) = c("一般", "良好", "优质", "珍贵", "完美")
p = ggplot(aes(x = cut, y = log(price)), data = diamonds) +
  geom_boxplot() + labs(x = "切工", y = "log(价格)")
print(p / (p + coord_flip()))
