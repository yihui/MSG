# 绘制土壤样本三元图
data(murcia, package = "MSG")
library(vcd)
ternaryplot(murcia[, 2:4], main = "",
            dimnames = c("砂粒", "粉粒", "黏粒"),
            col = MSG::vec2col(murcia$site), cex = .5)
