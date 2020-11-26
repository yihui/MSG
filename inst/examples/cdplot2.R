# ggplot2 绘制航天飞机 O 型环在不同温度下失效的条件密度图
library(ggplot2)
library(DAAG)
data(orings, package = "DAAG")
orings$Fail = factor(apply(orings[, -1], 1, function(x) all(x == 0)),
                     labels = c("yes", "no"))
p = ggplot(orings,
           aes(Temperature, ..count.., fill = Fail)) +
  geom_density(position = "fill") +
  geom_point(aes(Temperature, c(0.75, 0.25)[as.integer(Fail)])) +
  xlab("温度") +
  scale_y_continuous("失效", breaks = c(0.25, 0.75),
                     labels = c("否", "是")) +
  theme(legend.position = "")
print(p)
