# 向三维透视图中添加图形元素的展示
x = seq(-10, 10, length = 30)
y = x
f = function(x, y) {
  r = sqrt(x^2 + y^2)
  10 * sin(r) / r
}
z = outer(x, y, f)
z[is.na(z)] = 1
par(mar = c(4, 4, 0.2, 0.2))
res = persp(x, y, z,
             theta = 30, phi = 30, expand = 0.5, col = "lightblue",
             ltheta = 120, shade = 0.75, ticktype = "detailed",
             xlab = "X", ylab = "Y", zlab = "Sinc( r )"
)
xE = c(-10, 10)
xy = expand.grid(xE, xE)
points(trans3d(xy[, 1], xy[, 2], 6, pmat = res), col = 2, pch = 16)
lines(trans3d(x, y = 10, z = 6 + sin(x), pmat = res), col = 3)

phi = seq(0, 2 * pi, len = 201)
r1 = 7.725 # radius of 2nd maximum
xr = r1 * cos(phi)
yr = r1 * sin(phi)
lines(trans3d(xr, yr, f(xr, yr), res), col = "pink", lwd = 2)
