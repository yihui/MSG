require(RgoogleMaps)

markerdata <- read.csv(system.file("extdata", "Napoleon.csv", package = "MSG"))
boundingbox <- qbbox(lon = markerdata[ , "lon"], lat = markerdata[ ,"lat"])
NPMap <- GetMap.bbox(boundingbox$lonR, boundingbox$latR, destfile = "np.png", maptype = "map", zoom = 6, size = c(640, 370))

# Group 1 Engage
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[1:2], lat=markerdata$lat[1:2], lwd = 0.00015 * markerdata$size[1], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[2:3], lat=markerdata$lat[2:3], lwd = 0.00014 * markerdata$size[2], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[3:4], lat=markerdata$lat[3:4], lwd = 0.00013 * markerdata$size[3], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[4:5], lat=markerdata$lat[4:5], lwd = 0.00012 * markerdata$size[4], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[5:6], lat=markerdata$lat[5:6], lwd = 0.00011 * markerdata$size[5], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[6:7], lat=markerdata$lat[6:7], lwd = 0.0001 * markerdata$size[6], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[7:8], lat=markerdata$lat[7:8], lwd = 0.0001 * markerdata$size[7], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[8:9], lat=markerdata$lat[8:9], lwd = 0.0001 * markerdata$size[8], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[9:10], lat=markerdata$lat[9:10], lwd = 0.0001 * markerdata$size[9], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[10:11], lat=markerdata$lat[10:11], lwd = 0.0001 * markerdata$size[10], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[11:12], lat=markerdata$lat[11:12], lwd = 0.0001 * markerdata$size[11], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[12:13], lat=markerdata$lat[12:13], lwd = 0.0001 * markerdata$size[12], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[13:14], lat=markerdata$lat[13:14], lwd = 0.0001 * markerdata$size[13], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[14:15], lat=markerdata$lat[14:15], lwd = 0.0001 * markerdata$size[14], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[15:16], lat=markerdata$lat[15:16], lwd = 0.0001 * markerdata$size[15], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)

# Group 1 Lose
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[17:18], lat=markerdata$lat[17:18], lwd = 0.0001 * markerdata$size[17], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[18:19], lat=markerdata$lat[18:19], lwd = 0.0001 * markerdata$size[18], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[19:20], lat=markerdata$lat[19:20], lwd = 0.0001 * markerdata$size[19], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[20:21], lat=markerdata$lat[20:21], lwd = 0.0001 * markerdata$size[20], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[21:22], lat=markerdata$lat[21:22], lwd = 0.0001 * markerdata$size[21], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[22:23], lat=markerdata$lat[22:23], lwd = 0.0001 * markerdata$size[22], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[23:24], lat=markerdata$lat[23:24], lwd = 0.0001 * markerdata$size[23], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[24:25], lat=markerdata$lat[24:25], lwd = 0.0001 * markerdata$size[24], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[25:26], lat=markerdata$lat[25:26], lwd = 0.0001 * markerdata$size[25], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[26:27], lat=markerdata$lat[26:27], lwd = 0.0001 * markerdata$size[26], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[27:28], lat=markerdata$lat[27:28], lwd = 0.0001 * markerdata$size[27], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[28:29], lat=markerdata$lat[28:29], lwd = 0.0001 * markerdata$size[28], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[29:30], lat=markerdata$lat[29:30], lwd = 0.0001 * markerdata$size[29], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[30:31], lat=markerdata$lat[30:31], lwd = 0.0001 * markerdata$size[30], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[31:32], lat=markerdata$lat[31:32], lwd = 0.0001 * markerdata$size[31], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[32:33], lat=markerdata$lat[32:33], lwd = 0.0001 * markerdata$size[32], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[33:34], lat=markerdata$lat[33:34], lwd = 0.0001 * markerdata$size[33], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[34:35], lat=markerdata$lat[34:35], lwd = 0.0001 * markerdata$size[34], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)

# Group 2 Engage
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[36:37], lat=markerdata$lat[36:37], lwd = 0.0001 * markerdata$size[36], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[37:38], lat=markerdata$lat[37:38], lwd = 0.0001 * markerdata$size[37], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[38:39], lat=markerdata$lat[38:39], lwd = 0.0001 * markerdata$size[38], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[39:40], lat=markerdata$lat[39:40], lwd = 0.0001 * markerdata$size[39], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[40:41], lat=markerdata$lat[40:41], lwd = 0.0001 * markerdata$size[40], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)

# Group 2 Lose
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[42:43], lat=markerdata$lat[42:43], lwd = 0.0001 * markerdata$size[42], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)

# Group 3 Engage
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[44:45], lat=markerdata$lat[44:45], lwd = 0.0001 * markerdata$size[44], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[45:46], lat=markerdata$lat[45:46], lwd = 0.0001 * markerdata$size[45], col = rgb(139, 0, 0, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)

# Group 3 Lose
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[47:48], lat=markerdata$lat[47:48], lwd = 0.0001 * markerdata$size[47], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)
PlotOnStaticMap(NPMap, FUN = lines, lon=markerdata$lon[48:49], lat=markerdata$lat[48:49], lwd = 0.0001 * markerdata$size[48], col=rgb(0, 0, 139, alpha = 120, maxColorValue = 255), add = TRUE, verbose=0)

