# 汽车数据的热图
# 用极端化调色板
library(RColorBrewer)
heatmap(as.matrix(mtcars), col = brewer.pal(9, "RdYlBu"),
        scale = "column", margins = c(4, 8))
