# 宋词作者词风相关矩阵图。做系统聚类并根据聚类结果将作者分为 4 类
library(corrplot)
load(system.file("extdata", "SongWords.rda", package = "MSG"))
SongCorr <- cor(SongWords) # 词风相关矩阵
corrplot(SongCorr, order = "hc", diag=FALSE, addrect = 4, tl.cex=0.75)
