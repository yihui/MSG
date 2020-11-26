# ggplot2 绘制鸢尾花数据的散点图矩阵
library(ggplot2)
library(GGally)
data("iris")
names(iris) = c("花萼长度", "花萼宽度", "花瓣长度", "花瓣宽度", "种类")
p = ggpairs(iris, aes_string(colour="种类", alpha=0.5))
print(p)
