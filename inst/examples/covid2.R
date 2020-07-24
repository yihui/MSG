require2(c("ggplot2", "patchwork", "scales", "GuangchuangYu/nCov2019"))
y = load_nCov2019(lang='zh')
d = y['global']
dd <- d[d$time == time(y) & d$country != '中国', ]
dd <- d[d$time == as.Date("2020-03-27") & d$country != '中国', ]
dd <- dd[order(-dd$cum_confirm)[1:40], ]
dd$country = factor(dd$country, levels=dd$country)
dd$angle = 1:40 * 360/40
i = dd$angle > 90 & dd$confirm > 100
dd$angle[i] = dd$angle[i] + 180
dd$vjust = 1
dd$vjust[i] = 0
p_polor <-
  ggplot(dd, aes(country, cum_confirm, fill=cum_confirm)) +
  geom_col(width=1, color='grey90') +
  geom_col(aes(y=I(10000)), width=1, fill='white', alpha = .2) +
  geom_col(aes(y=I(1000)), width=1, fill='white', alpha = .2) +
  geom_col(aes(y=I(100)), width=1, fill='grey90', alpha = .2) +
  geom_col(aes(y=I(10)), width=1, fill='grey90', alpha = .2) +
  geom_col(aes(y=I(5)), width=1, fill = "white") +
  scale_y_log10() +
  scale_fill_gradientn(colors=c("steelblue", "lightgreen", "orange", "red","darkred", "brown"), trans="log") +
  geom_text(aes(label=paste(country, cum_confirm, sep=" "),
                y = cum_confirm *.8, angle=angle-90, vjust=vjust),
            data=function(d) d[d$cum_confirm > 2200,],
            size=3, color = "black")  +
  geom_text(aes(label=paste0(cum_confirm, " ", country),
                y = cum_confirm * 2, angle=angle+90),
            data=function(d) d[d$cum_confirm <= 2200,],
            size=3, vjust=0) +
  theme_void() +
  theme(legend.position="none") +
  coord_polar(direction=-1)

p_point <-
  ggplot(dd, aes(country, cum_confirm)) +
  geom_point(aes(color=cum_confirm), size = 2) +
  scale_color_gradientn(colours = rev(rainbow(5)),trans="log",
                        limits = 10^c(2, 5),
                        breaks = 10 ^(2:5),
                        labels = trans_format("log10", math_format(10^.x)),
                        minor_breaks = as.vector(sapply(2:10, function(x) x * 10^(2:6))))+
  geom_text(aes(label=country),hjust=rep(c(-0.2,1.2), 20), vjust=0.5) +
  scale_y_log10(breaks = 10 ^(2:5),
                limits = c(400, 200000),
                labels = trans_format("log10", math_format(10^.x)),
                minor_breaks = as.vector(sapply(2:10, function(x) x * 10^(2:6))))+
  scale_x_discrete(expand = c(0.05, 0.05)) +
  labs(x = NULL, y = NULL) +
  theme(legend.title = element_blank(), legend.position = c(0.9,0.8),
        axis.ticks = element_blank(),axis.text.y = element_blank(),
        legend.background = element_blank()) +
  coord_flip()
print(p_polor / p_point + patchwork::plot_layout(heights = c(4,3)))
