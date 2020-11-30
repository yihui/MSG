# 基础作图法绘制航天飞机 O 型环在不同温度下失效的棘状图
data(orings, package = "DAAG")
orings$Fail = factor(apply(orings[, -1], 1, function(x) all(x == 0)),
                     labels = c("是", "否"))
t(x = spineplot(Fail ~ Temperature, data = orings,
                xlab = "温度", ylab = "失效",
                col = c("lightblue", "red")))
