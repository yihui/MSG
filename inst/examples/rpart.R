# 脊椎矫正手术结果的分类树图
library(rpart)
data(kyphosis, package = "rpart")
levels(kyphosis$Kyphosis) = c("不存在", "存在")
names(kyphosis)[c(2, 4)] = c("年龄", "位置")
fit = rpart(Kyphosis ~ `年龄` + Number + `位置`, data = kyphosis)
par(mar = rep(1, 4), xpd = TRUE)
plot(fit, branch = 0.7)
text(fit, use.n = TRUE, digits = 7)
