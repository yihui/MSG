# ggplot2 绘制急性髓细胞白血病病人生存函数图
data("leukemia", package = "survival")
library(survival)
library(survminer)
leukemia.surv = survfit(Surv(time, status) ~ x, data = aml)
print(ggsurvplot(leukemia.surv, data = aml, ggtheme = theme_gray()))
