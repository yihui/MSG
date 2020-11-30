# ggplot2 绘制 2010 年中美国力对比图
library(MSG)
library(ggplot2)
data(cn_vs_us, package = "MSG")
## 恢复使用卫报的错误数据
cn_vs_us$value[11] = 15
cn_vs_us$value[12] = 3.5
cn_vs_us$value[23] = cn_vs_us$value[23] * 100
cn_vs_us$value[24] = cn_vs_us$value[24] * 10
## 按两国比例重新排列顺序
ratio = cn_vs_us$value[seq(1, 24, 2)] / cn_vs_us$value[seq(2, 24, 2)]
cn_vs_us$ratio = rep(ratio, each = 2)
cn_vs_us$metric = gsub("$", "USD", cn_vs_us$metric, fixed = TRUE)
cn_vs_us$metric =
  factor(cn_vs_us$metric,
         unique(cn_vs_us$metric)[order(unique(cn_vs_us$ratio),
                                       decreasing = TRUE)])

print(
  ggplot(cn_vs_us, aes(x = country, y = value, fill = country)) +
    geom_col() +
    theme(axis.text.x = element_blank(),
          axis.ticks = element_blank()) +
    facet_wrap(~metric, scales = "free_y", ncol = 4)
)
