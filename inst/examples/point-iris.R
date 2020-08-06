# 鸢尾花的花瓣长宽散点图
# 先将鸢尾花的类型转化为整数 1、2、3，便于使用向量
idx <- as.integer(iris[["Species"]])
plot(iris[, 3:4],
     pch = c(24, 21, 25)[idx],
     col = c("black", "red", "blue")[idx], panel.first = grid()
)
legend("topleft",
       legend = levels(iris[["Species"]]),
       col = c("black", "red", "blue"), pch = c(24, 21, 25), bty = "n"
)
