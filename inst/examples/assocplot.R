# 眼睛颜色与头发颜色的关联图
data(HairEyeColor)
x = margin.table(HairEyeColor, c(1, 2))
rownames(x) = c("黑色", "棕色", "红色", "金色")
colnames(x) = c("棕色", "蓝色", "褐色", "绿色")
assocplot(x, xlab = "头发", ylab = "眼睛")
