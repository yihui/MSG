# 弗吉尼亚死亡率数据在 lattice 中的点图
library(lattice)
print(
  dotplot(VADeaths,
          groups = FALSE, aspect = 0.3, type = c("p", "h"),
          layout = c(2, 2), between = list(x = 0.5)
  ))
