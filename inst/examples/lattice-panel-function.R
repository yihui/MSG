# lattice 中添加了密度曲线的直方图
iris.panel = histogram(
  ~ Sepal.Length | Species,
  layout = c(3, 1), data = iris, type = "density",
  panel = function(x, ...) {
    panel.histogram(x, ...)
    panel.mathdensity(
      dmath = dnorm, col = "red",
      lwd = 2, args = list(mean = mean(x), sd = sd(x))
    )
  }
)
print(iris.panel)
