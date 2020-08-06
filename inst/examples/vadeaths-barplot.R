# 基础作图法绘制弗吉尼亚死亡率数据条形图
data(VADeaths)
library(RColorBrewer) # 用分类调色板
par(mfrow = c(2, 1), mar = c(3, 2.5, 0.5, 0.1))
death <- t(VADeaths)[, 5:1]
barplot(death, col = brewer.pal(4, "Set1"))
barplot(death, col = brewer.pal(4, "Set1"),
        beside = TRUE, legend.text = TRUE)
