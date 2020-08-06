# 制作 lattice 需要的数据框以及修改 lattice 的图形参数
library(lattice)
set.seed(100)
# 首先生成三个向量数据
x = runif (100, 0, 10)
y = rnorm(100)
z = rchisq(100, 2)
comp = make.groups(x, y, z) # 将三个向量合并到同一数据框中
print(bxp0 = bwplot(which ~ data, data = comp, horizontal = TRUE))
trellis.par.set(
  plot.symbol = list(pch = 19, col = "black"),
  box.rectangle = list(lwd = 4, col = "red"),
  box.umbrella = list(lwd = 4, col = "red")
)
print(bxp0) # 这里的 bxp0 对象来自前一幅图，可再次利用
