# 作图的九种样式
par(mfrow = c(3, 3), mar = c(2, 1, 3, 1))
for (i in c("p", "l", "b", "c", "o", "h", "s", "S", "n")) {
  plot(c(1:5, 5:1), xlab = "", type = i, ylab = "", axes = FALSE,
       main = paste("Plot type: \"", i, "\"", sep = ""))
  box()
}
