# 基础作图法绘制航天飞机 O 型环在不同温度下失效的条件密度图
data(orings, package = "DAAG")
orings$Fail = factor(apply(orings[, -1], 1, function(x) all(x == 0)),
                     labels = c("yes", "no"))
cdplot(Fail ~ Temperature, data = orings, col = c("lightblue", "red"))
points(orings$Temperature, c(0.75, 0.25)[as.integer(orings$Fail)],
       col = "blue", bg = "yellow", pch = 21)
