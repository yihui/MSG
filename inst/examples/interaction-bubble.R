# 连续型自变量的交互作用气泡图
par(mar = c(4.5, 4.5, 2, 0.2), mfrow = c(1, 2), cex.main = 1)
sq = 1:10
x = rep(sq, 10)
z = rep(sq, each = 10)
# 有交互效应:
y = c(outer(sq, sq,
             function(x, z) 2 + x + 0.5 * z + 0.5 * x * z + runif (1)))
symbols(x, z, y, xlab = "x", ylab = "z",
        bg = rgb(0, 1, 0, 0.3), fg = "blue", inches = 0.4,
        main = expression(y = 2 + x + 0.5 * z + 0.5 * x * z + epsilon)
)
# 无交互效应:
y = c(outer(sq, sq, function(x, z) 2 + x + 0.5 * z + runif (1)))
symbols(x, z, y,
        bg = rgb(0, 1, 0, 0.3), fg = "blue", xlab = "x", ylab = "z",
        main = expression(y = 2 + x + 0.5*z + epsilon), inches = 0.2
)
