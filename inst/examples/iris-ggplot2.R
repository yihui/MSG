data("iris")
library(ggplot2)
p = ggplot(aes(x = Petal.Length, y = Petal.Width), data = iris) +
  geom_point(aes(color = Species, shape = Species)) +
  labs(x = "花瓣长度", y = "花瓣宽度", color = "种类", shape = "种类")
print(p)
