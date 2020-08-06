# ggplot2 绘制三组双峰数据的小提琴图比较
library(ggplot2)
f = function(mu1, mu2) c(rnorm(300, mu1, 0.5), rnorm(200, mu2, 0.5))
x1 = f(0, 2)
x2 = f(2, 3.5)
x3 = f(0.5, 2)
df = reshape(data.frame(A = x1, B = x2, C = x3),
              direction = "long", varying = c("A", "B", "C"),
              v.name=c("value"), times=c("A", "B", "C"))
p = ggplot(df, aes(value, time)) +
  geom_violin(fill = "bisque") +
  geom_boxplot(width = .1) +
  labs(x = "", y = "")
print(p)
