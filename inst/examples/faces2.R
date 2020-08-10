# 绘制部分汽车数据的脸谱图
library(TeachingDemos)
faces2(mtcars[, c("hp", "disp", "mpg", "qsec", "wt")],
       which = c(14, 9, 11, 6, 5))
