# 基础作图法绘制急性髓细胞白血病病人生存函数图
data(aml, package = "survival")
library(survival)
library(survival)
leukemia.surv = survfit(Surv(time, status) ~ x, data = aml)
plot(leukemia.surv, lty = 1:2, xlab = "time")
legend("topright", c("Maintenance", "No Maintenance"),
       lty = 1:2, bty = "n")
