# ggplot2 绘制半透明散点图中
data(BinormCircle, package = "MSG")
library(ggplot2)
library(patchwork)
p = ggplot(BinormCircle, aes(V1, V2)) +
  theme(axis.ticks = element_blank(), axis.text = element_blank(),
        axis.title = element_blank())
p1 = p + geom_point(color = rgb(1,0,0)) + theme_void()
p2 = p + geom_point(color = rgb(1,0,0), alpha = 0.01) + theme_void()
print(p1 | p2)
