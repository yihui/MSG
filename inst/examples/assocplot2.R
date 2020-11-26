# ggplot2 绘制眼睛颜色与头发颜色的关联图
data(HairEyeColor)
library(ggplot2)
x = margin.table(HairEyeColor, c(1, 2))
x1 = reshape2::melt(unclass(chisq.test(x)$res),
                     value.name = "residuals")
p = ggplot(x1, aes(x = Hair, y = Eye)) +
  geom_tile(aes(fill = residuals)) +
  labs(x = "头发", y = "眼睛", fill = "残差") +
  scale_x_discrete(labels=c("Black" = "黑色",
                            "Brown" = "棕色",
                            "Red" = "红色",
                            "Blond" = "金色")) +
  scale_y_discrete(labels=c("Blue" = "蓝色",
                            "Brown" = "棕色",
                            "Hazel" = "褐色",
                            "Green" = "绿色")) +
  scale_fill_gradient2()
print(p)
