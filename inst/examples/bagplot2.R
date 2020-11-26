# ggplot2 绘制汽车数据的二维箱线图和密度等高图
# 数据来自 rpart 包中的 car.test.frame
data(car.test.frame, package = "rpart")
library(MSG)
library(ggplot2)
source(system.file("examples", "stat_bag.R", package = "MSG"))
car.wd = with(car.test.frame, cbind(Weight, Disp.))
bp_median = apply(data.frame(car.wd), 2, median)
bp_df = data.frame(x = bp_median[1], y = bp_median[2])
bp0 = ggplot(data.frame(car.wd), aes(Weight, Disp.)) +
  labs(x = "车重", y = "气缸排量")
bp1 = bp0 +
  stat_bag(prop = 1, fill = "blue") +  # enclose all the points
  stat_bag(prop = 0.5, alpha = 0.5, fill = "blue") + # 50% of points
  geom_point() +
  geom_point(data = bp_df, mapping=aes(x = x, y = y),
             col = "red", shape = 8, size = 3)
bp2 = bp0 + stat_density_2d() + geom_point()
print(bp1 | bp2)
