# ggplot2 绘制弗吉尼亚死亡率数据条形图
library(ggplot2)
library(patchwork)
data(VADeaths)
reshape_VADeaths = transform(
  expand.grid(sex = colnames(VADeaths), age = rownames(VADeaths)),
  rates = as.vector(t(VADeaths))
)
p = ggplot(data = reshape_VADeaths,
            aes(x = age, y = rates, fill = sex))
p1 = p + geom_col(position = "stack")
p2 = p + geom_col(position = "dodge")
print(p1 / p2)
