# ggplot2 绘制 2010 年中美国力对比图
library(MSG)
library(ggplot2)
data(cn_vs_us)
print(
  ggplot(cn_vs_us, aes(x = country, y = value, fill = country)) +
  geom_col() + facet_wrap(~metric, scales = "free_y", ncol = 4)
)
