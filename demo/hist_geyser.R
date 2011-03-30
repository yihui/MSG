# 注意：以下两行代码足够添加密度曲线，本图作了美化
# hist(geyser$waiting, freq = FALSE, main = "")
# lines(density(geyser$waiting))
par(mar = c(1.8, 3, 0.5, 0.1), mgp = c(2, 0.5, 0))
data(geyser, package = "MASS")
hst = hist(geyser$waiting, probability = TRUE, main = "", xlab = "waiting")
d = density(geyser$waiting)
polygon(c(min(d$x), d$x, max(d$x)), c(0, d$y, 0), col = "lightgray", border = NA)
lines(d)
ht = NULL
brk = seq(40, 110, 5)
for (i in brk) ht = c(ht, d$y[which.min(abs(d$x - i))])
segments(brk, 0, brk, ht, lty = 3)
