# ggplot2 画出的一系列正弦曲线
sines <- outer(1:20, 1:4, function(x, y) sin(x / 20 * pi * y))
df <- expand.grid(x = 1:20, y = factor(1:4))
df$sines <- as.vector(sines)
p <- ggplot(df, aes(x = x, y = sines, color = y)) +
  geom_point(aes(shape = y)) +
  geom_line()
print(p)
