# 地震的时间频数图
data(quake6, package = "MSG")
library(ggplot2)
p = ggplot(quake6, aes(x = year, y = month)) +
  stat_sum(aes(size = ..n..)) + scale_size(range = c(1, 8)) +
  guides(size=guide_legend("$n$"))
print(p)
