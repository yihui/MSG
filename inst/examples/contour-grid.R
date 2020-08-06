# 基础作图法绘制网格数据的示意图
par(mar = c(2.5, 3, 0.1, 0.1), mgp = c(1.5, .5, 0))
x <- 1:4
y <- 1:3
z <- rep(0, 12)
z[c(2, 3, 8, 11, 10, 5)] <- 1
z[c(6, 7)] <- 2
z[1] <- 5
z[4] <- 3
z[12] <- 4
plot(expand.grid(x, y), xaxt = "n", yaxt = "n",
     type = "n", xlab = "x", ylab = "y",
     xlim = c(0.5, 4.5), ylim = c(.5, 3.5), panel.first = grid())
polygon(c(1, 2, 3, 4, 3, 2), c(2, 1, 1, 2, 3, 3), lty = 2)
segments(2, 2, 3, 2)
text(rep(x, 3), rep(y, each = 4), paste("z =", z), cex = 1.5)
axis(1, 1:4, paste("x =", x))
axis(2, 1:3, paste("y =", y))
