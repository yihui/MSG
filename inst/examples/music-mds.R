# 音乐数据的多维标度分析平面图
data("music", package = "MSG")
par(mar = c(0, 2, 0, 0))
# 标准化所有频率变量到 0-1 之间并计算曲目之间欧式距离
st.music <- apply(music[, -(1:2)], 2, function(x) {
  (x - min(x)) / (max(x) - min(x))
})
fit <- cmdscale(dist(st.music))
plot(fit, type = "n", ann = FALSE, axes = FALSE)
text(fit[, 1], fit[, 2], rownames(music), cex = .7, xpd = TRUE)
box()
