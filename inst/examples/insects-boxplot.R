# 基础作图法绘制昆虫数目箱线图
data(InsectSprays)
boxplot(count ~ spray, data = InsectSprays,
        col = "lightgray", horizontal = TRUE, pch = 4,varwidth = TRUE)
