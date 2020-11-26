# 钻石雕琢水平的极坐标条形图
data("diamonds")
library(ggplot2)
levels(diamonds$cut) = c("一般", "良好", "优质", "珍贵", "完美")
p = ggplot(aes(x = cut, fill = cut), data = diamonds) +
  coord_polar() +
  geom_bar(width = 1, show.legend = FALSE) +
  labs(x = "切工", y = "频数")
print(p)
