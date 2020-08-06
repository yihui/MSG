# ggplot2 绘制地震经纬度条件分割图
data(quakes)
library(ggplot2)
p <- ggplot(transform(quakes, depth_group = cut(depth, breaks = 4))) +
  geom_polygon(
    data = map_data("world", region = c("New Zealand", "Fiji")),
    mapping = aes(long, lat, group = group, fill = region)) +
  geom_point(aes(long, lat), alpha = 0.1) +
  facet_wrap(~depth_group) +
  xlim(160, 190) +
  theme(legend.position = "")
print(p)
