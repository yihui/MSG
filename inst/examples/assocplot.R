# 眼睛颜色与头发颜色的关联图
data(HairEyeColor)
x <- margin.table(HairEyeColor, c(1, 2))
assocplot(x)
