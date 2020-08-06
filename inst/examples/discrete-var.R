# 分类变量的散点图示方法示例
set.seed(717)
x <- sample(rep(1:2, c(12, 18)))
y <- rep(1:2, c(18, 12))
par(
  mfrow = c(2, 2), mar = c(2.5, 3, 2, 0.1), pch = 20,
  mgp = c(1.5, 0.5, 0), cex.main = 1
)
plot(x, y,
  main = "(1) 原始散点图", xlim = c(0.8, 2.2),
  ylim = c(0.8, 2.2)
)
plot(jitter(x), jitter(y), main = "(2) 随机打散后的散点图 ")
points(x, y, cex = 3)
sunflowerplot(x, y,
  main = "(3) 向日葵散点图",
  xlim = c(0.8, 2.2), ylim = c(0.8, 2.2)
)
mosaicplot(table(x, y), main = "(4) 马塞克图")
