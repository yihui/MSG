# 法国食道癌数据的交互效应图
data(esoph)
par(mar = c(4, 4, 0.2, 0.2))
with(esoph, {
  interaction.plot(agegp, alcgp, ncases / (ncases + ncontrols),
                   trace.label = "alcohol", fixed = TRUE,
                   xlab = "Age", ylab = "Cancer Proportion")
})
