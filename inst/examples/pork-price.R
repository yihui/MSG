# 基础函数绘制更新后的猪肉价格走势图
year = c(2006, 2007, 2008, 2009, 2010 + c(1, 4, 7, 10, 13) / 12)
price = c(12.11, 18.80, 22.09, 18.39,
          19.86, 14.89, 16.68, 18.76, 19.57)
par(mfrow = c(2, 2), mar = c(4, 4, 0.5, 0.5))
plot(year, price, type = "h", lwd = 5, lend = 1,
     ylim = c(0, max(price) + 1), yaxs = "i")
plot(year, price, type = "h", lwd = 5, lend = 1)
plot(year, price, type = "o",
     ylim = c(0, max(price) + 1), yaxs = "i")
plot(year, price, type = "o")
