# 绘制泰坦尼克号生还数据的马赛克图
data(Titanic)
par(mar = c(2, 3.5, .1, .1))
mosaicplot(Titanic, shade = TRUE, main = "")
