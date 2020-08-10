# 基础作图法用矩阵图画出的一系列正弦曲线
sines = outer(1:20, 1:4, function(x, y) sin(x / 20 * pi * y))
par(mar = c(2, 4, .1, .1))
matplot(sines, type = "b", pch = 21:24, col = 2:5, bg = 2:5)
# 数据矩阵的前 6 行
round(head(sines), 5)
