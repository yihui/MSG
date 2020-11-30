# 弗吉尼亚死亡率数据在 lattice 中的点图
data(VADeaths)
library(lattice)
colnames(VADeaths) = c("农村男性", "农村女性", "城市男性", "城市女性")
print(
  dotplot(VADeaths, xlab = "频数",
          groups = FALSE, aspect = 0.3, type = c("p", "h"),
          layout = c(2, 2), between = list(x = 0.5)
  ))
