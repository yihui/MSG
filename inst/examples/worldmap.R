# 世界地图的两个视角
library(ggplot2)
library(patchwork)
m0 = ggplot() +
  geom_polygon(data = worldmap,
               mapping = aes(long,lat, group=group,  fill = region)) +
  guides(fill = FALSE)
m1 = m0 + coord_quickmap()
m2 = m0 + coord_map("ortho", orientation = c(20,90,0))
print(m1 / m2)
