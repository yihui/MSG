# 中国 31 地区国民预期寿命和高学历人数密度颜色等高图
data(ChinaLifeEdu, package = "MSG")
library(ggplot2)
p = ggplot(ChinaLifeEdu, aes(Life.Expectancy, High.Edu.NO)) +
  geom_density_2d_filled(alpha = 0.7) +
  geom_point(color = "white") +
  theme(legend.position = "") +
  labs(x ="预期寿命", y = "高学历人数")
print(p)
