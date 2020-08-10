# 基础作图法绘制弗吉尼亚死亡率数据的 Cleveland 点图
data(VADeaths)
par(mar = c(2, 4, 0.2, 0.2))
dotchart(t(VADeaths)[, 5:1],
         col = brewer.pal(4, "Set1"), pch = 19, cex = .65)
