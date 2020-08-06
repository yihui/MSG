# 三种鸢尾花各自的花萼长度直方图
print(
  histogram(~ Sepal.Length | Species, layout = c(3, 1), data = iris)
)
