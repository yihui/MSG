# 火山高度数据颜色等高图
par(mar = c(4, 4, 2, 2), cex.main = 1)
x = 10 * 1:nrow(volcano)
y = 10 * 1:ncol(volcano)
filled.contour(x, y, volcano,
               color = terrain.colors,
               plot.title = title(
                 xlab = "北部长度（米）", ylab = "西部长度（米）"
               ),
               plot.axes = {
                 axis(1, seq(100, 800, by = 100))
                 axis(2, seq(100, 600, by = 100))
               },
               key.title = title(main = "高度\n(米)"),
               key.axes = axis(4, seq(90, 190, by = 10))
)
