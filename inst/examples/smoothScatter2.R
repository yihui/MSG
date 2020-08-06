# ggplot2 绘制 BinormCircle 数据的平滑散点图
data("BinormCircle", package = "MSG")
library(ggplot2)
library(ggpointdensity)
p <- ggplot(data = BinormCircle, aes(x = V1, y = V2)) +
  geom_pointdensity(adjust = 0.1) +
  scale_color_gradient(low="lightblue", high="darkblue") +
  theme(legend.position = "")
print(p)
