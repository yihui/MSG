# ggplot2 绘制世界各国农业进出口竞争力地图
source(system.file("extdata", "AgriComp.R", package = "MSG"))
library(ggplot2)
worldmap <- map_data("world")
worldmap2 <- dplyr::left_join(worldmap, AgriComp,
                              by = c("region" = "Country"))
p <- ggplot(worldmap2) +
  geom_polygon(aes(long,lat, group=group,  fill = Index)) +
  coord_quickmap() +
  scale_fill_gradientn(colours = rev(rainbow(5))) +
  labs(x = "经度", y = "纬度") +
  geom_rect(data = data.frame(xmin = 72.26818, ymin = -55.8565,
                              xmax = 168.93766, ymax =54.589),
            mapping = aes(xmin = xmin, ymin = ymin,
                          xmax = xmax, ymax =ymax),
            fill = NA, color = "black", linetype = 2) +
  geom_hline(yintercept = 0, linetype = 2)
print(p)
