# 脊椎矫正手术结果的分类树图
data(kyphosis, package = "rpart")
library(rpart)
fit = rpart(Kyphosis ~ Age + Number + Start, data = kyphosis)
par(mar = rep(1, 4), xpd = TRUE)
plot(fit, branch = 0.7)
text(fit, use.n = TRUE, digits = 7)
