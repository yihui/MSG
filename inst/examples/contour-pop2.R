# ggplot2 绘制中国 31 地区国民预期寿命和高学历人数密度等高图
library(KernSmooth)
library(metR)
data(ChinaLifeEdu, package = "MSG")
est <- bkde2D(ChinaLifeEdu, apply(ChinaLifeEdu, 2, dpik))
est_tidy <- data.frame(
  life = rep(est$x1, length(est$x2)),
  edu = rep(est$x2, each = length(est$x1)),
  z = as.vector(est$fhat)
)
levels <- pretty(range(est_tidy$z, finite = TRUE), 15)
p <- ggplot(est_tidy, aes(life, edu)) +
  geom_contour(aes(z = z), breaks = levels) +
  geom_text_contour(aes(z = z)) +
  geom_point(aes(Life.Expectancy, High.Edu.NO), data = ChinaLifeEdu) +
  labs(x ="预期寿命", y = "高学历人数")
print(p)
