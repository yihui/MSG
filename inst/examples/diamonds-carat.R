# 按雕琢水平切片后的钻石重量密度曲线
data("diamonds")
library(ggplot2)
levels(diamonds$cut) = c("一般", "良好", "优质", "珍贵", "完美")
p = ggplot(aes(x = carat), data = diamonds) +
  geom_density() +
  labs(x = "重量", y = "分布密度") +
  facet_grid(cut ~ .)
print(p)
