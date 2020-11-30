# 在 ggplot2 作图系统中灵活地添加图层
library(ggplot2)
library(patchwork)
p = ggplot(aes(x = hp, y = mpg), data = mtcars) +
  geom_point() + # 散点图的图层
  labs(x = "马力", y = "每加仑汽油行驶里程") # 坐标轴名称图层
p1 = p + geom_smooth(method = "loess") # 用散点图加上平滑层并打印出来
p2 = p + facet_grid(~am) # 用自动档和手动挡将散点图切片并打印
p3 = p + geom_density2d() # 散点图上加上二维核密度估计层
print((p + labs(title = "p = ggplot() + geom_point()") |
         p1 + labs(title = "p + geom_smooth()")) /
        (p2 + labs(title = "p + facet_grid()") |
           p3 + labs(title = "p + geom_density2d()")))
