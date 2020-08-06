# 基础作图法绘制 BinormCircle 数据的平滑散点图
data("BinormCircle", package = "MSG")
par(mar = c(4, 4, 0.3, 0.1))
smoothScatter(BinormCircle)
