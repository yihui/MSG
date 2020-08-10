# 绘制风玫瑰图
library(openair)
windRose(mydata)
windRose(mydata = mydata, ws = "ws", wd = "wd",
         key.position = "right", paddle = FALSE, seg = 0.9,
         angle = 22.5, ws.int = 0.5,
         cex = 3, breaks = c(seq(0,5,1), 21))
