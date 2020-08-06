# 钻石雕琢水平的极坐标条形图
library(ggplot2)
p <- ggplot(aes(x = cut, fill = cut), data = diamonds) +
  coord_polar() +
  geom_bar(width = 1, show.legend = FALSE)
print(p)
