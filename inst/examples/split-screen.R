# 拆分作图设备屏幕区域的示例
mat_scr <- matrix(c(
  0  , 0.1, 0.4, 0.3,
  0.5, 0.8, 0.9, 1,
  0  , 0.2, 0.3, 0.5,
  0.4, 0.7, 0.8, 1),
  4, 4)
split.screen(mat_scr)
for (i in 1:4) {
  screen(i)
  par(mar = c(0, 0, 0, 0), mgp = c(0, 0, 0), cex.axis = 0.7)
  plot(sort(runif(30)), sort(runif(30)), col = i,
       pch = c(19, 21, 22, 24)[i], ann = FALSE, axes = FALSE)
  box(col = "gray")
  axis(1, tcl = 0.3, labels = NA)
  axis(2, tcl = 0.3, labels = NA)
}
