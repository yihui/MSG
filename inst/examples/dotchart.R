# 基础作图法绘制弗吉尼亚死亡率数据的 Cleveland 点图
library(RColorBrewer)
data(VADeaths)
colnames(VADeaths) = c("农村男性", "农村女性", "城市男性", "城市女性")
par(mar = c(2, 6, 0.2, 0.2))
dotchart(t(VADeaths)[, 5:1],
         col = brewer.pal(4, "Set1"), pch = 19, cex = .65)
