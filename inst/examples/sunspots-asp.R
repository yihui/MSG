# 不同纵横比设置下的太阳黑子时序图
layout(matrix(1:2, 2), heights = c(2, 1))
par(mar = c(4, 4, 0.1, 0.1))
plot(sunspots)
plot(sunspots, asp = .1)
