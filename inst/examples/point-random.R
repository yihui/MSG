# 点的随机艺术作品
par(mar = c(0.2, 0.2, 0.2, 0.2), mfrow = c(2, 2))
for (n in c(63, 60, 76, 74)) {
  set.seed(711)
  plot.new()
  box()
  size = c(replicate(n, 1 / rbeta(2, 1.5, 4)))
  center = t(replicate(n, runif (2)))[rep(1:n, each = 2), ]
  color = paste("#", apply(
    replicate(2 * n, sample(c(0:9, LETTERS[1:6]), 8, TRUE)), 2, paste,
    collapse = ""
  ), sep = "")
  points(center, cex = size, pch = rep(20:21, n), col = color)
}
