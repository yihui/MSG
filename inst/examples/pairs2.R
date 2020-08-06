# ggplot2 绘制鸢尾花数据的散点图矩阵
library(ggplot2)
library(GGally)
p <- ggpairs(iris, aes_string(colour="Species", alpha=0.5))
print(p)
