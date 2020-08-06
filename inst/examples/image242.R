# ggplot2 绘制颜色图中色块与数值的对应关系
x <- matrix(sample(24), 8)
p <- ggplot(transform(expand.grid(h = 1:8, v = 1:3), z = as.vector(x)),
       aes(x = h, y = v)) +
  geom_tile(aes(fill = z)) +
  scale_fill_distiller(palette="YlOrRd") +
  geom_text(aes(label = z)) +
  theme_void()
print(p)
