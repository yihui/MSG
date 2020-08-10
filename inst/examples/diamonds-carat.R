# 按雕琢水平切片后的钻石重量密度曲线
library(ggplot2)
p = ggplot(aes(x = carat), data = diamonds) +
  geom_density() +
  facet_grid(cut ~ .)
print(p)
