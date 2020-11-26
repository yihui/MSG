# `qplot()`函数作图示例
library(ggplot2)
library(patchwork)
data(geyser, package = "MASS")
data(BinormCircle, package = "MSG")
print(qplot(x = waiting, data = geyser, xlab = "间隔时间") |
        qplot(x = V1, y = V2, data = BinormCircle, alpha = I(0.01)))
