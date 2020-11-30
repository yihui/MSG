# 绘制世界各国疫情形势图
library(ggplot2)
library(patchwork)
library(scales)
covid = readRDS(
  system.file("extdata", "covidcountries.rds", package = "MSG"))
n_countries = nrow(covid)
covid = transform(
  covid, hjust = 1,label = paste(cum_confirm, country),
  angle = 1: n_countries * 360/n_countries - 90 - 180/n_countries)
second_half = (n_countries %/% 2):n_countries
covid$angle[second_half] = covid$angle[second_half] + 180
covid$hjust[second_half] = 0
covid$label[second_half] =
  paste(covid$country, covid$cum_confirm)[second_half]

p_polar =
  ggplot(covid, aes(country, cum_confirm, fill=cum_confirm)) +
  geom_col(width=1, color='grey90') +
  geom_col(aes(y=I(10000)), width=1, fill='white', alpha = .2) +
  geom_col(aes(y=I(1000)), width=1, fill='white', alpha = .2) +
  geom_col(aes(y=I(100)), width=1, fill='white', alpha = .2) +
  geom_col(aes(y=I(10)), width=1, fill = "white") +
  scale_y_log10() +
  scale_fill_gradientn(
    colors=c("steelblue", "lightgreen", "orange",
             "red","darkred", "brown"),
    trans="log") +
  geom_text(aes(label=label, y = cum_confirm,
                angle=angle, hjust = hjust), vjust= 0.5, size = 3)  +
  annotate(
    "text", x = 39, y = c(10, 100, 1000, 10000)*1.5, color = "white",
    label=c(10, 100, 1000, 10000), angle = 360 / 40) +
  theme_void() +
  theme(legend.position="none") +
  coord_polar()
p_point =
  ggplot(covid, aes(country, cum_confirm)) +
  geom_point(aes(color=cum_confirm), size = 2) +
  scale_color_gradientn(
    colours = rev(rainbow(5)),trans="log",
    limits = 10^c(2, 5),
    breaks = 10^(2:5),
    labels = trans_format("log10", math_format(10^.x)),
    minor_breaks = as.vector(sapply(2:10, function(x) x * 10^(2:6))))+
  geom_text(aes(label=country),hjust=rep(c(-0.2,1.2), 20), vjust=0.5)+
  scale_y_log10(
    breaks = 10^(2:5),
    limits = c(400, 200000),
    labels = trans_format("log10", math_format(10^.x)),
    minor_breaks = as.vector(sapply(2:10, function(x) x * 10^(2:6))))+
  scale_x_discrete(expand = c(0.05, 0.05)) +
  labs(x = NULL, y = NULL) +
  coord_flip() +
  theme(legend.title = element_blank(), legend.position = c(0.9,0.3),
        axis.ticks = element_blank(),axis.text.y = element_blank(),
        legend.background = element_blank())
print(p_polar / p_point + plot_layout(heights = c(4,3)))
