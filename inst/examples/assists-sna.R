# 骑士与湖人比赛的助攻网络图
library(sna, warn.conflicts = FALSE)
data(assists, package = "MSG")
par(xpd = TRUE, mar = c(0, 2.4, 0, 3.2))
set.seed(2011) # 元素位置是随机安排的，设定种子固定它们
gplot(assists, displaylabels = TRUE, label.cex = .7)
