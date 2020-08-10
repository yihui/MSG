# 宋词作者层次聚类谱系图
load(system.file("extdata", "SongWords.rda", package = "MSG"))
SongCorr = cor(SongWords) # 词风相关矩阵
song.hc = hclust(as.dist(1 - SongCorr))
par(mar = c(0.5, 4, .2, 0.1))
plot(song.hc, main = "", cex = .8)
rect.hclust(song.hc, k = 4, border = "red")
