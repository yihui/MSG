# 绘制泊松分布随机数茎叶图和直方图
library(ggplot2)
library(cowplot)
data(islands)
set.seed(717)
x = rpois(80, lambda = 10)
stem_txt = readLines(
  system.file("extdata", "stem-poisson.txt", package = "MSG"))
stem1 = ggplot(as.data.frame(x)) +
  geom_histogram(aes(x), binwidth = 2, fill = "white") +
  coord_flip(xlim = c(17, 1)) +
  theme(panel.grid.major=element_blank(),
        panel.grid.minor=element_blank()) +
  theme_void() +
  annotate("text", x = seq(1, 17, 1), y = 0, hjust = 0,
           label = stem_txt)
stem2 = ggplot(as.data.frame(x)) +
  geom_histogram(aes(x), binwidth = 1) +
  labs(y = "频数") +
  coord_flip(xlim = c(17, 1))
print(plot_grid(stem1, stem2, nrow = 1, align = "hv"))
