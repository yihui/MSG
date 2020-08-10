# 参数 `adj`、`mgp`、`tcl` 和 `ljoin` 设置演示
layout(matrix(c(1, 3, 4, 2), 2))
par(mar = rep(1, 4))
plot(1:5,
     type = "n", xlab = "", ylab = "",
     xaxt = "n", yaxt = "n", xlim = c(.5, 5.5)
)
grid(col = "gray")
text(2, 2, "adj=c(1, 1)", adj = c(1, 1), cex = 1.3, col = "gray30")
points(2, 2, pch = 3, cex = 5, lwd = 2)
text(2, 4, "adj=c(1, 0)", adj = c(1, 0), cex = 1.3, col = "gray30")
points(2, 4, pch = 3, cex = 5, lwd = 2)
text(3, 3, "adj=c(0.5, 0.5)", adj = c(.5, .5), cex = 1.3, col = "gray30")
points(3, 3, pch = 3, cex = 5, lwd = 2)
text(4, 2, "adj=c(0, 1)", adj = c(0, 1), cex = 1.3, col = "gray30")
points(4, 2, pch = 3, cex = 5, lwd = 2)
text(4, 4, "adj=c(0, 0)", adj = c(0, 0), cex = 1.3, col = "gray30")
points(4, 4, pch = 3, cex = 5, lwd = 2)
plot(1,
     type = "n", xlim = c(.5, 4.5), ylim = c(.5, 3.5),
     xaxt = "n", yaxt = "n", ann = F
)
box()
for (i in 0:2) {
  lines(c(1 + i, 2 + i, 1 + i), c(1, 2, 3),
        ljoin = i, lwd = 30, col = "darkgray"
  )
  points(2 + i, 2, pch = 19, cex = 1.2)
}
text(2.5, .7, "ljoin = 0, 1, 2", cex = 1.2)
par(tcl = 0.5, mar = c(5, 5, 4, 1))
plot(1:10, xlab = "", ylab = "", main = "tcl = 1")
text(3, 8, "srt = 30", srt = 30, cex = 1.2)
text(8, 3, "srt = 120", srt = 120, cex = 1.2)
par(mgp = c(5, 3, 1), mar = c(6, 6, 4, 1), tcl = -.5)
plot(1:10, xlab = "X title", ylab = "Y title",
     main = "mgp = c(5, 3, 1)")
