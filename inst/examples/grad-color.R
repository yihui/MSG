# New Haven 地区的年均气温
xx = c(1912, 1912:1971, 1971)
yy = c(min(nhtemp), nhtemp, min(nhtemp))
plot(xx, yy, type = "n", xlab = "Year", ylab = "Temperatures")
for (i in seq(255, 0, -3)) {
  # rgb() 中的绿色成分逐渐变小:
  yy = c(45, nhtemp - (nhtemp - min(nhtemp)) * (1 - i / 255), 45)
  polygon(xx, yy, col = rgb(1, i / 255, 0), border = NA)
  # 读者可以在这里加上 Sys.sleep(0.05) 以便看清作图过程
}
box() # 补齐边框
