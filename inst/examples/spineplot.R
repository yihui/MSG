# 基础作图法绘制航天飞机 O 型环在不同温度下失效的棘状图
data(orings, package = "DAAG")
orings$Fail = factor(apply(orings[, -1], 1, function(x) all(x == 0)),
                     labels = c("yes", "no"))
t(x = spineplot(Fail ~ Temperature, data = orings,
                col = c("lightblue", "red")))
