# ggplot2 绘制网格数据的示意图
library(ggplot2)
x <- 1:4
y <- 1:3
z <- rep(0, 12)
z[c(2, 3, 8, 11, 10, 5)] <- 1
z[c(6, 7)] <- 2
z[1] <- 5
z[4] <- 3
z[12] <- 4
contour_grid_tidy <- transform(expand.grid(x = x, y = y), z = z)
contour_grid_polygon <- data.frame(x = c(1, 2, 3, 4, 3, 2),
                                   y = c(2, 1, 1, 2, 3, 3))
p <- ggplot(contour_grid_tidy, aes(x, y)) +
  geom_text(aes(label = paste("z =", z)), color = "blue") +
  scale_x_continuous(limits = c(0.5, 4.5),
                     labels = function(x) paste("x =", x)) +
  scale_y_continuous(limits = c(0.5, 3.5),
                     labels = function(x) paste("x =", x)) +
  geom_polygon(data = contour_grid_polygon, fill = NA,
               color = "black", lty = 2) +
  geom_segment(aes(x = 2, y = 2, xend = 3, yend = 2))
print(p)
