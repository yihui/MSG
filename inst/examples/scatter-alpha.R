# 基础作图法绘制半透明散点图中
data(BinormCircle, package = "MSG")
par(mfrow = c(1, 2), pch = 20, ann = FALSE, mar = rep(.05, 4))
plot(BinormCircle, col = rgb(1, 0, 0), axes = FALSE)
box()
plot(BinormCircle, col = rgb(1, 0, 0, alpha = .01), axes = FALSE)
box()
