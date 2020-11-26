# 地震的时间频数图
data(quake6, package = "MSG")
library(ggplot2)
p = ggplot(quake6, aes(x = year, y = month)) +
  stat_sum(aes(size = ..n..)) +
  labs(x = "年份", y = "月份", size = "频数") +
  scale_y_continuous(breaks = 1:12, minor_breaks = NULL) +
  scale_size(range = c(1, 8))
print(p)
