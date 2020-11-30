# 基础函数作图法绘制鸢尾花数据的散点图矩阵
# 观察如何使用 hist() 做计算并用 rect() 画图
data("iris")
panel.hist = function(x, ...) {
  usr = par("usr")
  on.exit(par(usr))
  par(usr = c(usr[1:2], 0, 1.5))
  h = hist(x, plot = FALSE)
  breaks = h$breaks
  nB = length(breaks)
  y = h$counts / max(h$counts)
  rect(breaks[-nB], 0, breaks[-1], y, col = "beige")
}
idx = as.integer(iris[["Species"]])
names(iris)[1:4] = c("花萼长度", "花萼宽度", "花瓣长度", "花瓣宽度")
pairs(iris[1:4],
      upper.panel = function(x, y, ...)
        points(x, y, pch = c(17, 16, 6)[idx], col = idx),
      pch = 20, oma = c(2, 2, 2, 2),
      lower.panel = panel.smooth, diag.panel = panel.hist
)
