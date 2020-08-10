# 绘制世界各地大陆块面积茎叶图和直方图
library(ggplot2)
library(cowplot)
data(islands)
stem_txt = readLines(
  system.file("extdata", "stem-islands.txt", package = "MSG"))
stem1 = ggplot(as.data.frame(islands)) +
  geom_histogram(aes(islands / 1000), binwidth = 2, fill = "white") +
  coord_flip(xlim = c(18, -6)) +
  theme(panel.grid.major=element_blank(),
        panel.grid.minor=element_blank()) +
  theme_void() +
  annotate("text", x = seq(-6, 18, 2), y = 0, hjust = 0,
           label = stem_txt)
stem2 = ggplot(as.data.frame(islands)) +
  geom_histogram(aes(islands / 1000), binwidth = 2) +
  coord_flip(xlim = c(18, -6))
print(plot_grid(stem1, stem2, nrow = 1, align = "hv"))
