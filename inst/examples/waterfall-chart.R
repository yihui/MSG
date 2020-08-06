# “统计之都”网站八月第一周访问数据瀑布图
auv <- c(939, 1005, 973, 910, 875, 658, 688)
par(mar = c(4, 4, .5, .1))
plot(auv, xlab = "八月第一周", ylab = "绝对唯一访问次数", type = "n",
     xlim = c(0.5, 7.5), ylim = c(0, max(auv)),
     xaxt = "n", panel.first = grid())
axis(1, 1:7,
     sprintf("周%s", c("一", "二", "三", "四", "五", "六", "日")))
rect(1:7 - 0.3, c(0, auv[1:6]), 1:7 + 0.3, auv,
     col = c(NA, ifelse(diff(auv) < 0, "red", NA)))
