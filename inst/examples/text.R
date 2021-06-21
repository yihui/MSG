# 添加标题、任意文本和周边文本的一个演示
par(mar = c(4, 4, 4, 3))
plot(0:10, type = "n", xlab = "", ylab = "", xlim = c(0, 12))
grid(col = "gray")
title(
  main = "主标题",
  xlab = "横轴标题", ylab = "纵轴标题"
)
mtext("这里是 \"side = 4\"", side = 4, line = 1)
x = c(6, 4, 6, 8)
y = c(8, 5, 2, 5)
s = c(0, 90, 180, 270)
for (i in 1:4) {
  text(x[i], y[i], sprintf("srt = %d", s[i]), srt = s[i])
}
segments(c(6, 0, 6, 12), c(10, 5, 0, 5), c(0, 6, 12, 6),
         c(5, 0, 5, 10),
         lty = c(2, 1, 1, 2)
)
legend(-0.2, 9.8, c("Upper", "Lower"),
       lty = 2:1, cex = 0.8,
       bty = "n"
)
