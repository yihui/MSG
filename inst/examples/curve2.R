# ggplot2 绘制一元函数曲线图
library(ggplot2)
library(patchwork)
chippy <- function(x) sin(cos(x) * exp(-x / 2))
df1 <- data.frame(x = seq(-8, 7, by = 0.01))
p1 <- ggplot(transform(df1, y = chippy(x)), aes(x, y)) + geom_line()
df2 <- data.frame(x = seq(-20, 20, by = 0.01))
p2 <- ggplot(transform(df2, y = sin(x)/x), aes(x, y)) + geom_line()
print(p1 / p2)
