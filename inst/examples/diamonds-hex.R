# 钻石重量与价格的蜂巢图
library(ggplot2)
p = ggplot(aes(x = carat, y = price), data = diamonds) +
  geom_hex()
print(p)
