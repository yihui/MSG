# 基础作图法绘制各种杀虫剂下昆虫数目的带状图
data(InsectSprays)
layout(matrix(1:2, 2), height = c(1, 1))
par(mar = c(4, 4, 0.2, 0.2))
boxplot(count ~ spray, data = InsectSprays, horizontal = TRUE,
        border = "red", col = "lightgreen", at = 1:6 - 0.3,
        xlab = "频数", ylab = "杀虫剂")
stripchart(count ~ spray, data = InsectSprays, method = "stack",
           add = TRUE)
stripchart(count ~ spray, data = InsectSprays, method = "jitter",
           xlab = "频数", ylab = "杀虫剂")
