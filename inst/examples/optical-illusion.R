# 一个经典的视觉欺骗示例
set.seed(320)
par(mar = c(1, 0, 1, 0), xpd = TRUE)
plot.new()
h <- runif(4)
v <- runif(4, 0, .4)
arrows(v[1:2], h[1:2], v[1:2] + .6, h[1:2], angle = 45, code = 3)
arrows(v[3:4], h[3:4], v[3:4] + .6, h[3:4], angle = 135, code = 3, col = 2)
