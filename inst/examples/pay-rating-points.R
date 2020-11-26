# 演员收入与电视剧评分的空心和实心散点图
par(mfrow = c(1, 2))
data("tvearn", package = "MSG")
plot(pay/10^4 ~ rating, data = tvearn, # 默认为空心点
     xlab = "评分", ylab = "薪酬 (万)")
plot(pay/10^4 ~ rating, data = tvearn, pch = 19, # 改为实心点
     xlab = "评分", ylab = "薪酬 (万)")
