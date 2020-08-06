data(music, package = "MSG")
par(mfrow = c(1, 2), mar = c(4.1, 4.1, 0.5, 0.5))
andrews_curve(scale(music[, 4:6]), xlab = "$t$", ylab = "$f(t)$",
              n = 50, col = 1)
with(
  music,
  andrews_curve(scale(music[, 4:6]),
                n = 50, xlab = "$t$", ylab = "$f(t)$",
                col = artist, lty = as.integer(type)
  )
)
