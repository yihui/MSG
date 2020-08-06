# 绘制汽车数据的星状图
# 预设调色板，stars() 默认用整数来表示颜色
palette(rainbow(12, s = 0.6, v = 0.75))
stars(mtcars[, 1:7], len = 0.8, key.loc = c(14, 1.5), ncol = 7,
      main = "", draw.segments = TRUE)
palette("default") # 恢复默认调色板
