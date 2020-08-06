# RColorBrewer 包中所有调色板颜色的演示
layout(matrix(1:3, 3), heights = c(2, 1, 1))
par(mar = c(0, 4, 0, 0))
display.brewer.all(type = "seq") # 连续型：18 种
display.brewer.all(type = "div") # 极端化：9 种
display.brewer.all(type = "qual") # 离散型：8 种
