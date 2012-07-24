require(RgoogleMaps)

markerdata <- read.csv("/root/Napoleon.csv")
boundingbox <- qbbox(lon = markerdata[ , "lon"], lat = markerdata[ ,"lat"])
NPMap <- GetMap.bbox(boundingbox$lonR, boundingbox$latR, destfile = "np.png", maptype = "map", zoom = 6, size = c(640, 370))

# Group 1 Engage
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[1:2], lat=markerdata$lat[1:2], lwd = 0.00015 * markerdata$size[1], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[2:3], lat=markerdata$lat[2:3], lwd = 0.00014 * markerdata$size[2], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[3:4], lat=markerdata$lat[3:4], lwd = 0.00013 * markerdata$size[3], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[4:5], lat=markerdata$lat[4:5], lwd = 0.00012 * markerdata$size[4], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[5:6], lat=markerdata$lat[5:6], lwd = 0.00011 * markerdata$size[5], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)

for (i in 6:15)
  {
  PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[i:(i+1)], lat=markerdata$lat[i:(i+1)], lwd = 0.0001 * markerdata$size[i], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
  }


# Group 1 Lose
for (j in i:34)
  {
  PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[j:(j+1)], lat=markerdata$lat[j:(j+1)], lwd = 0.0001 * markerdata$size[j], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
  }

# Group 2 Engage
for (k in j:40)
  {
  PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[k:(k+1)], lat=markerdata$lat[k:(k+1)], lwd = 0.0001 * markerdata$size[k], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
  }

# Group 2 Lose
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[42:43], lat=markerdata$lat[42:43], lwd = 0.0001 * markerdata$size[42], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)

# Group 3 Engage
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[44:45], lat=markerdata$lat[44:45], lwd = 0.0001 * markerdata$size[44], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[45:46], lat=markerdata$lat[45:46], lwd = 0.0001 * markerdata$size[45], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)

# Group 3 Lose
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[47:48], lat=markerdata$lat[47:48], lwd = 0.0001 * markerdata$size[47], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[48:49], lat=markerdata$lat[48:49], lwd = 0.0001 * markerdata$size[48], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)