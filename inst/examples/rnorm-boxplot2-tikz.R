# ggplot2 绘制箱线图的凹槽与统计推断图
library(ggplot2)
x = rnorm(150)
y = rnorm(50, 0.8)
p = ggplot(
  data.frame(num = c(x, y), idx = c(rep("x", 150), rep("y", 50)))) +
  geom_boxplot(aes(x = idx, y = num, fill = idx), notch = TRUE) +
  scale_fill_discrete(name = "", labels = c("$x$", "$y$")) +
  coord_flip()
print(p)
