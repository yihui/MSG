# 汽车马力与每加仑汽油行驶里程的关系
library(ggplot2)
p <- ggplot(aes(x = hp, y = mpg), data = mtcars) +
  geom_point() +
  geom_smooth(method = "loess")
print(p)
