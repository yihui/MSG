# ggplot2 绘制海拔高度与物种数目的 LOWESS 曲线
library(ggplot2)
library(patchwork)
data(PlantCounts, package = "MSG")
set.seed(717)
gg_plant =
  ggplot(PlantCounts, aes(altitude, counts)) +
  geom_point(color = rgb(0, 0, 0, 0.3))
gg_plant1 = gg_plant
for (i in seq(0.02, 1, length = 70)) {
  gg_plant1 = gg_plant1 +
    geom_smooth(se = FALSE, span = i, color = rgb(0.4, i, 0.4)) +
    labs(x = "高度", y = "频数")
}
gg_plant2 = gg_plant
for (i in 1:200) {
  # 有放回抽取 200 个样本序号
  idx = sample(nrow(PlantCounts), 300, TRUE)
  gg_plant2 = gg_plant2 +
    geom_smooth(data = PlantCounts[idx, ], se = FALSE,
                color = rgb(0, 0, 0, 0.1)) +
    labs(x = "高度", y = "频数")
}
print(gg_plant1 | gg_plant2)
