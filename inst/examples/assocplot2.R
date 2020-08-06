# ggplot2 绘制眼睛颜色与头发颜色的关联图
data(HairEyeColor)
library(ggplot2)
x <- margin.table(HairEyeColor, c(1, 2))
x1 <- reshape2::melt(unclass(chisq.test(x)$res),
                     value.name = "residuals")
p <- ggplot(x1, aes(x = Hair, y = Eye)) +
  geom_tile(aes(fill = residuals)) +
  scale_fill_gradient2()
print(p)
