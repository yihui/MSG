# 绘制中国新冠疫情地图
library(ncovr)
library(dplyr)
library(scales)
covidchina <- readRDS(
  system.file("extdata", "covidchina.rds", package = "MSG"))
for (choose_date in c("01-21", "01-22")){
  print(plot_ggmap(covidchina,
                   col_name = paste0("confirmed_", choose_date),
                   show_capitials = FALSE,
                   province_language = NA,
                   add_title = choose_date))
}
