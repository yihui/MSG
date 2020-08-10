# 绘制土壤样本三元图
data(murcia, package = "MSG")
library(vcd)
ternaryplot(murcia[, 2:4], main = "",
            col = vec2col(murcia$site), cex = .5)
