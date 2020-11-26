# ggplot2 绘制弗吉尼亚死亡率数据的 Cleveland 点图
data(VADeaths)
library(ggplot2)
colnames(VADeaths) = c("农村男性", "农村女性", "城市男性", "城市女性")
tm = rownames(VADeaths)
rownames(VADeaths) = NULL
vd = data.frame(cbind(tm, VADeaths))
vd = reshape(vd, direction = "long", varying = names(vd)[2:5],
              v.name = c("rate"), times = names(vd)[2:5])
vd$rate = as.numeric(vd$rate)
vd$tm = factor(vd$tm)
vd$tm = factor(vd$tm,levels = rev(levels(vd$tm)))
p = ggplot(vd, aes(time, rate, color = time)) + geom_point() +
  facet_grid(tm ~ .) + coord_flip() +
  theme(legend.position = "", axis.title = element_blank())
print(p)
