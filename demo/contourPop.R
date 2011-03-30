library(MSG)
data(ChinaLifeEdu)
x=ChinaLifeEdu
library(KernSmooth)
est=bkde2D(x,apply(x,2,dpik))
contour(est$x1,est$x2,est$fhat,nlevels=15, col = 'darkgreen',
             vfont = c("sans serif", "plain"),xlab="预期寿命",ylab="高学历人数")
points(x,pch=20)
