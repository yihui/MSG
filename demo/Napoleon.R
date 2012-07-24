require(RgoogleMaps)

markerdata <- read.csv("/root/Napoleon.csv")
boundingbox <- qbbox(lon = markerdata[ , "lon"], lat = markerdata[ ,"lat"])
NPMap <- GetMap.bbox(boundingbox$lonR, boundingbox$latR, destfile = "np.png", maptype = "map", zoom = 6, size = c(640, 370))

lwd_m <- array(0.0001,dim=15)
lwd_m[1:5] <- c(0.00015,0.00014,0.00013,0.00012,0.00011)

# Group 1 Engage
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[1:2], lat=markerdata$lat[1:2], lwd = 0.00015 * markerdata$size[1], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), verbose=0)
for (i in 2:15)
  {
    PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[i:(i+1)], lat=markerdata$lat[i:(i+1)], lwd =  lwd_m[i]* markerdata$size[i], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
  }


# Group 1 Lose
for (j in 17:34)
  {
    PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[j:(j+1)], lat=markerdata$lat[j:(j+1)], lwd = 0.0001 * markerdata$size[j], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
  }

# Group 2 Engage
for (k in 36:40)
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