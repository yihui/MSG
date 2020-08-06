# 基础作图法绘制箱线图的凹槽与统计推断图
x = rnorm(150)
y = rnorm(50, 0.8)
boxplot(list(x, y),names = c("x", "y"), horizontal = TRUE,
        col = 2:3, notch = TRUE, varwidth = TRUE)
