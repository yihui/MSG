# ggplot2 绘制中国政府网站中的百分比数据 LOWESS 图
library(scales)
library(ggplot2)
library(patchwork)
data(gov.cn.pct, package = "MSG")
p1 <- ggplot(gov.cn.pct) +
  geom_line(aes(percentage,count))
p2 <- p1 + xlim(c(9.9,11.1))
p3 <- ggplot(gov.cn.pct,
             aes(percentage, count, group = round0, color = round0)) +
  geom_point(size = 0.1, alpha = 0.3) +
  geom_smooth(aes(group = round0)) +
  scale_y_log10(
    breaks = 10^(2:6),
    labels = trans_format("log10", math_format(10^.x)),
    minor_breaks = as.vector(sapply(2:10, function(x) x * 10^(2:6))))+
  theme(legend.position = c(0.8, 0.8),
        legend.background = element_blank())
p4 <- ggplot(gov.cn.pct, aes(percentage, count, color = round1)) +
  geom_point(size = 0.1, alpha = 0.3) +
  geom_smooth(aes(group = round1)) +
  scale_y_log10(
    breaks = 10^(2:6),
    labels = trans_format("log10", math_format(10^.x)),
    minor_breaks = as.vector(sapply(2:10, function(x) x * 10^(2:6))))+
  theme(legend.position = c(0.8, 0.8),
        legend.background = element_blank())
print((p1 | p2) / (p3 | p4))
