# 基础作图法绘制给定震源深图的地震经纬度条件分割图
data(quakes)
library(maps)
par(mar = rep(0, 4), mgp = c(2, .5, 0))
coplot(lat ~ long | depth, data = quakes, number = 4,
       xlab = "经度", ylab = "纬度",
       ylim = c(-45, -10.72), panel = function(x, y, ...) {
         map("world2",
             regions = c("New Zealand", "Fiji"),
             add = TRUE, lwd = 0.1, fill = TRUE, col = "lightgray"
         )
         text(180, -13, "Fiji", adj = 1)
         text(170, -35, "NZ")
         points(x, y, col = rgb(0.2, 0.2, 0.2, .5))
       }
)
