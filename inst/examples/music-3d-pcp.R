# 音乐曲目左声道频率的三维散点图与平行坐标图
data(music, package = "MSG")
library(scatterplot3d)
with(
  music,
  scatterplot3d(lave, lmax, lvar / 1e6,
                xlab = "左声道均值",
                ylab = "左声道最大值",
                zlab = "左声道方差 / 1e6",
                pch = 19,
                color = as.integer(type), mar = c(2.5, 3, .1, 2)
  )
)
levels(music$type) = c("古典", "摇滚")
library(GGally)
print(ggparcoord(music, columns = c(4, 5, 3), groupColumn = "type")
      + labs(x = "变量", y = "数值", color = "类型"))
