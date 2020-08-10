# 鸢尾花数据的平行坐标图
data("iris")
library(GGally)
p = ggparcoord(iris, columns = 1:4,
               groupColumn = 5, scale = "uniminmax") +
  geom_line(size = 1.2)
print(p)
