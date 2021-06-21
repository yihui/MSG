# 基础作图法绘制某国政府网站中的百分比数据 LOWESS 图
data(gov.cn.pct, package = "MSG")
pct.lowess = function(cond) {
  with(gov.cn.pct, {
    plot(count ~ percentage, pch = ifelse(cond, 4, 20),
         col = rgb(0:1, 0, 0, c(0.04, 0.5))[cond + 1], log = "y")
    lines(lowess(gov.cn.pct[cond, 1:2], f = 1/3),col = 2, lwd = 2)
    lines(lowess(gov.cn.pct[!cond, 1:2],f = 1/3),col = 1, lwd = 2)
  })
}
par(mar = c(3.5, 3.5, 1, 0.2), mfrow = c(2, 2))
with(gov.cn.pct, {
  plot(percentage, count, type = "l", panel.first = grid())
  plot(percentage, count, type = "l", panel.first = grid(),
       xlim = c(10, 11))
  pct.lowess(round0)
  pct.lowess(round1)
})
