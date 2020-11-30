# 基础作图法绘制带坐标轴须的喷泉喷发时间密度曲线图
data(faithful)
par(mar = c(3, 4, 0.4, 0.1))
plot(density(faithful$eruptions), main = "")
rug(faithful$eruptions)
