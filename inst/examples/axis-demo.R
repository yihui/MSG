# 中美出口额双坐标轴图示
data(Export.USCN, package = "MSG")
par(mar = c(4, 4.5, .1, 4.5))
# 看似条形图，实为粗线条，宽度 lwd = 10
plot(1:13, Export.USCN$Export,
     xlab = "年份 / 国家",
     ylab = expression("美元 (10" ^16 *")"), xaxt = "n", type = "h",
     lwd = 10, col = c(rep(2, 6), NA, rep(4, 6)), lend = 1,
     panel.first = grid()
)
# 设置 x 轴的刻度标记：\n 的意思是换行符
xlabel = paste(Export.USCN$Year, "\n", Export.USCN$Country)
xlabel[7] = ""
abline(v = 7, lty = 2) # 添加一条分隔线
# 使用带有换行符的刻度标记
axis(1, 1:13, labels = xlabel, tick = FALSE, cex.axis = 0.75)
# 换算为人民币再计算另一个坐标轴刻度（汇率 8.27）
ylabel = pretty(Export.USCN$Export * 8.27)
axis(4, at = ylabel / 8.27, labels = ylabel)
mtext(expression("人民币 (10"^16*")"), side = 4, line = 2)
box()
