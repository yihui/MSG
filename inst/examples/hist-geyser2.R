# ggplot2 绘制喷泉间隔时间直方图
library(ggplot2)
library(cowplot)
data(geyser, package = "MASS")
p <- ggplot(aes(waiting), data = geyser)
p1 <- p + geom_histogram(breaks = seq(40, 110, by = 5))
p2 <- p + geom_histogram(breaks = seq(40, 110, by = 5),
                         aes(y = ..density..))
p3 <- p + geom_histogram(breaks = seq(40, 110, by = 10))
p4 <- p + geom_histogram(breaks = seq(42, 108, by = 2),
                         fill = "red", color = "black")
print(plot_grid(p1, p2, p3, p4,
                labels = c("(1) freq = TRUE", "(2) freq = FALSE",
                     "(3) breaks = 5", "(4) breaks = 40"),
                ncol = 2))
