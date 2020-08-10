# ggplot2 绘制更新后的猪肉价格走势图
library(ggplot2)
library(patchwork)
pork_price = data.frame(
  year = c(2006, 2007, 2008, 2009, 2010 + c(1, 4, 7, 10, 13) / 12),
  price = c(12.11, 18.80, 22.09, 18.39,
            19.86, 14.89, 16.68, 18.76, 19.57)
)
p = ggplot(pork_price, mapping = aes(year, price))
p1 = p + geom_bar(stat = "identity")
p2 = p +
  geom_bar(mapping = aes(year, price - 12), stat = "identity") +
  scale_y_continuous(labels = function(y) y + 12)
p3 = p + geom_line() + geom_point()
p4 = p3 + ylim(c(0, max(pork_price$price)))
print((p1 | p2) / (p4 | p3))
