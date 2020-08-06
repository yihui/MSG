# 火山的三维透视图
data("volcano", package = "MSG")
z = volcano
x = 4 * (1:nrow(z))
y = 4 * (1:ncol(z))
par(mar = rep(0, 4))
persp(x, y, z, theta = 150, phi = 30, col = "green3", ltheta = -120,
      shade = 0.75, scale = FALSE, border = NA, box = FALSE)
