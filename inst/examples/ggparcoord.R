# 鸢尾花数据的平行坐标图
data("iris")
library(GGally)
names(iris)[1:4] = c("花萼长度", "花萼宽度", "花瓣长度", "花瓣宽度")
p = ggparcoord(iris, columns = 1:4,
               groupColumn = 5, scale = "uniminmax") +
  geom_line(size = 1.2) +
  labs(x = "变量", y = "数值", color = "种类")
print(p)
