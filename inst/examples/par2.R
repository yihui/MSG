# 不同的图形边框、字体样式、字体族、坐标轴标签样式、点样式、线末端样式和线样式
par(mfrow = c(2, 2), mar = c(3, 3, 3, 2))
btype = c("l", "7", "c", "u")
fml = c("serif", "sans", "mono", "symbol")
for (i in 0:3) {
  plot(1:10,
       font.main = i + 1, las = i, pch = NA, bty = btype[i + 1],
       main = paste("font.main = ", i + 1, "; las = ", i, "; bty = \"", btype[i + 1], "\"", sep = "")
  )
  if (i < 3) {
    text(5, 8, paste("family = \"", fml[i + 1], "\"", sep = ""),
         cex = 1.4, family = fml[i + 1], col = "gray40"
    )
  }
  text(1, 6, paste("pch = ", i + 21, sep = ""),
       adj = c(0, .5), col = "gray40", cex = 1.3
  )
  points(5:10, rep(6, 6), pch = i + 21, cex = 2)
  if (i < 3) {
    text(1, 4, paste("lend = ", i, sep = ""),
         adj = c(0, .5), col = "gray40", cex = 1.3
    )
    segments(5, 4, 10, 4, lwd = 20, lend = i, col = "darkgray")
    points(c(5, 10), c(4, 4), pch = 19, )
  }
  text(1, 2, paste("lty = ", i + 1, sep = ""),
       adj = c(0, .5), col = "gray40", cex = 1.3
  )
  segments(5, 2, 10, 2, lwd = 2, lty = i + 1, col = "darkgray")
}
