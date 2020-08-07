# 多边形和矩形结合使用的一个巧妙图示
set.seed(2020)
y = rnorm(40) # 产生 40 个正态随机数
plot(x = y, xlab = "", ylab = "", type = "l") # 画线图
# 请思考为什么坐标值要这样设置：多边形的连线路径
polygon(c(1, 1:40, 40), c(0, y, 0), col = "gray")
xy = par("usr") # 获取当前图形区域坐标范围，以便下用
# 用白色矩形挡住了 0 以下的部分
rect(xy[1], xy[3], xy[2], 0, col = "white")
lines(y) # 重画一遍 x 的线条
abline(h = 0, col = "lightgray") # 添加水平线

