library(HistData)
data(Nightingale, package = "HistData")

# For some graphs, it is more convenient to reshape death rates to long format
#  keep only Date and death rates
library(reshape)
Night= Nightingale[,c(1,8:10)]
melted = melt(Night, "Date")
names(melted) = c("Date", "Cause", "Deaths")
melted$Cause = sub("\\.rate", "", melted$Cause)
melted$Regime = ordered( rep(c(rep('Before', 12), rep('After', 12)), 3),
                          levels=c('Before', 'After'))
Night = melted

# subsets, to facilitate separate plotting
Night1 = subset(Night, Date < as.Date("1855-04-01"))
Night2 = subset(Night, Date >= as.Date("1855-04-01"))

# sort according to Deaths in decreasing order, so counts are not obscured [thx: Monique Graf]
Night1 = Night1[order(Night1$Deaths, decreasing=TRUE),]
Night2 = Night2[order(Night2$Deaths, decreasing=TRUE),]

Night1$Cause = factor(Night1$Cause,levels = c("Disease","Wounds", "Other"), labels = c("疾病", "受伤", "其它"))
Night2$Cause = factor(Night2$Cause,levels = c("Disease","Wounds", "Other"), labels = c("疾病", "受伤", "其它"))
# merge the two sorted files
Night = rbind(Night1, Night2)

library(ggplot2)

# After plot

cxc2 = ggplot(Night2, aes(x = factor(Date), y=Deaths, fill = Cause)) +
  geom_bar(width = 1, position="identity", stat="identity", color="black") +
  scale_y_sqrt()
n1 = cxc2 + coord_polar(start=3*pi/2) +
  # ggtitle("Causes of Mortality in the Army in the East") +
  labs(x = "", y = "死亡人数", fill = "死因")

# Before plot
cxc1 = ggplot(Night1, aes(x = factor(Date), y=Deaths, fill = Cause)) +
  # do it as a stacked bar chart first
  geom_bar(width = 1, position="identity", stat="identity", color="black") +
  # set scale so area ~ Deaths
  scale_y_sqrt()
# A coxcomb plot = bar chart + polar coordinates
n2 = cxc1 + coord_polar(start=3*pi/2) +
  # ggtitle("Causes of Mortality in the Army in the East") +
  labs(x = "", y = "死亡人数", fill = "死因")

library(ggpubr)
print(ggarrange(n1, n2, common.legend = TRUE, legend = "right"))
