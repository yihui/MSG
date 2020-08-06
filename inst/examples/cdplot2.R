# ggplot2 绘制航天飞机 O 型环在不同温度下失效的条件密度图
library(ggplot2)
fail <- factor(c(2, 2, 2, 2, 1, 1, 1, 1, 1, 1, 2, 1,
                 2, 1, 1, 1, 1, 2, 1, 1, 1, 1, 1),
               levels = 2:1, labels = c("yes", "no"))
temperature = c(53, 57, 58, 63, 66, 67, 67, 67, 68, 69, 70,
                70, 70, 70, 72, 73, 75, 75, 76, 76, 78, 79, 81)
fail_temperature <- data.frame(fail = fail, temperature = temperature)
p <- ggplot(fail_temperature,
            aes(temperature, ..count.., fill = fail)) +
  geom_density(position = "fill") +
  geom_point(aes(temperature, c(0.75, 0.25)[as.integer(fail)])) +
  scale_y_continuous("fail", breaks = c(0.25, 0.75),
                     labels = c("no", "yes")) +
  theme(legend.position = "")
print(p)
