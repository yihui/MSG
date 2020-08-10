# # 基础作图法绘制海拔高度与物种数目的 LOWESS 曲线
data(PlantCounts, package = "MSG")
par(mar = c(4.5, 4.5, .1, 0.2), mfrow = c(1, 2), pch = 20)
with(PlantCounts, {
  plot(altitude, counts,
       panel.first = grid(), col = rgb(0, 0, 0, 0.3))
  for (i in seq(0.01, 1, length = 70)) {
    lines(lowess(altitude, counts, f = i), col = rgb(
      0.4,
      i, 0.4
    ), lwd = 1.5) # 改变 LOWESS 的范围参数 f
  }
  plot(altitude, counts, col = rgb(0, 0, 0, 0.3))
  for (i in 1:200) {
    # 有放回抽取 300 个样本序号
    idx = sample(nrow(PlantCounts), 300, TRUE)
    lines(lowess(altitude[idx], counts[idx]), col = rgb(0, 0, 0, 0.1),
          lwd = 1.5)
  }
})
