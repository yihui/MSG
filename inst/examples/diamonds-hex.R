# 钻石重量与价格的蜂巢图
library(ggplot2)
p = ggplot(aes(x = carat, y = price), data = diamonds) +
  geom_hex() + labs(x = "重量", y = "价格", fill = "频数")
print(p)
