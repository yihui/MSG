# ggplot2 绘制控制变量 z 之后 y 与 x 的关系
library(ggplot2)
library(patchwork)
set.seed(123)
x = seq(0, 4, length = 100)
z = rep(0:4, each = 20)
y = -x + z + rnorm(100, 0, .25)
df = data.frame(x = x, y = y, z = factor(z))
gg_xy1 = ggplot(df, aes(x, y)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(x = "$x$", y = "$y$")
gg_xy2 =
  ggplot(df, aes(x, y, group = z, color = z)) +
  geom_point() +
  geom_smooth(method = "lm") +
  labs(x = "$x$", y = "$y$") +
  guides(col = guide_legend("$z$"))
  theme(legend.background = element_blank())
print(gg_xy1 | gg_xy2)
