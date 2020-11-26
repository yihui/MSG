# ggplot2 绘制弗吉尼亚死亡率数据条形图
library(ggplot2)
library(patchwork)
data(VADeaths)
reshape_VADeaths = transform(
  expand.grid(sex = colnames(VADeaths), age = rownames(VADeaths)),
  rates = as.vector(t(VADeaths))
)
p = ggplot(data = reshape_VADeaths,
            aes(x = age, y = rates, fill = sex)) +
  labs(x = "年龄", y = "死亡率", fill = "性别") +
  scale_fill_discrete(labels = c("农村男性", "农村女性",
                                 "城市男性", "城市女性"))
p1 = p + geom_col(position = "stack")
p2 = p + geom_col(position = "dodge")
print(p1 / p2)
