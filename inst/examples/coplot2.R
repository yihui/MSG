# ggplot2 绘制地震经纬度条件分割图
data(quakes)
library(ggplot2)
p = ggplot(transform(quakes, depth_group = cut(depth, breaks = 4))) +
  geom_polygon(
    data = map_data("world", region = c("New Zealand", "Fiji")),
    mapping = aes(long, lat, group = group, fill = region)) +
  geom_point(aes(long, lat), alpha = 0.1) +
  labs(x = "经度", y = "纬度") +
  xlim(160, 190) +
  facet_wrap(~depth_group) +
  theme(legend.position = "")
print(p)
