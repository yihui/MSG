# R 基础作图法绘制“末日狂奔”游戏得分在不同游戏平台以及死因下的比较
library(MSG)
data(canabalt)
par(mfrow = c(2, 2))
plot(year, price, type = "h", lwd = 5, lend = 1,
     ylim = c(0, max(price) + 1), yaxs = "i")
plot(year, price, type = "h", lwd = 5, lend = 1)
plot(year, price, type = "o", ylim = c(0, max(price) + 1), yaxs = "i")
plot(year, price, type = "o")
