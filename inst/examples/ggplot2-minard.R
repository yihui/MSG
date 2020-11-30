# 拿破仑远征图
# 读取数据：
troops = read.table(
  system.file("extdata", "troops.txt", package = "MSG"),
  header = TRUE)
cities = read.table(
  system.file("extdata", "cities.txt", package = "MSG"),
  header = TRUE)

# 加载包：
library(ggplot2)

# 作图框架：
p = ggplot(cities, aes(long, lat)) +
  # 添加军队路线：
  geom_path(aes(size = survivors, colour = direction, group = group),
            data = troops, lineend = "round") +
  # 添加城市点：
  geom_point() +
  # 添加城市名称：
  geom_text(aes(label = city),
            hjust = 0, vjust = 1, size = 2.5) + # 城市名称
  # 设定颜色：
  scale_colour_manual(values = c("grey50", "red")) +
  # 设定线条尺寸：
  scale_size(range = c(1, 10)) +
  # 设置坐标轴标签：
  labs(x = "经度", y = "纬度") +
  # 隐藏图例设置：
  theme(legend.position = "none") +
  # 设定横轴范围：
  xlim(24, 39)

# 展示图：
print(p)
