# ggplot2 绘制馅饼销售饼图、点图和条形图
library(ggplot2)
library(patchwork)
pie_sales = data.frame(
  ratio = c(0.12, 0.3, 0.26, 0.16, 0.04, 0.12),
  name = c("Blueberry", "Cherry", "Apple",
           "Boston Cream", "Other", "Vanilla Cream"))
pie_sales = pie_sales[order(-pie_sales$ratio), ]
pie_sales$name = factor(
  pie_sales$name, levels = pie_sales$name[order(pie_sales$ratio)])
pie1 = ggplot(pie_sales, aes(x = "", y = ratio, fill = name)) +
  geom_bar(width = 1, stat = "identity", color = "white") +
  coord_polar("y", start = 0) +
  theme_void()
dot1 = ggplot(pie_sales, aes(name, ratio, color = name)) +
  geom_point() +
  coord_flip() +
  theme(legend.position = "", axis.title = element_blank())
col1 = ggplot(pie_sales, aes(name, ratio, fill = name)) +
  geom_col() +
  coord_flip() +
  theme(legend.position = "", axis.title = element_blank())
print(pie1 / dot1 / col1)
