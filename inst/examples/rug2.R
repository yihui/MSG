# ggplot2 绘制带坐标轴须的喷泉间隔时间密度曲线图
library(ggplot2)
data(faithful)
p <- ggplot(faithful, aes(eruptions)) + geom_line(stat = "density") +
  geom_rug() + xlim(c(1, 6))
print(p)
