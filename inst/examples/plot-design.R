# 经纱断裂数据的因素效应图
data(warpbreaks)
names(warpbreaks) = c("断裂数目", "羊毛种类", "拉力强度")
par(mfrow = c(2, 1), mar = c(4.5, 4, 0.2, 0.2))
plot.design(warpbreaks, col = "blue",
            xlab = "因素", ylab = "断裂数目均值")
plot.design(warpbreaks, fun = median, col = "blue",
            xlab = "因素", ylab = "断裂数目中值")
