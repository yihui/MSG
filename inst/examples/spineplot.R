# 基础作图法绘制航天飞机 O 型环在不同温度下失效的棘状图
fail =  factor(c(2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 2, 1,
                  2, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1),
                levels = 2:1,
                labels = c("yes", "no"))
temperature = c(53, 57, 58, 63, 66, 67, 67, 67, 68, 69, 70,
                70, 70, 70, 72, 73, 75, 75, 76, 76, 78, 79, 81)
par(mar = c(4, 4, .5, 2))
t(x = spineplot(fail ~ temperature, col = c("lightblue", "red")))
