library(DAAG)
library(ggplot2)
data(orings, package = "DAAG")
orings$Damage = c(11,4,4,2,0,0,0,0,0,0,4,0,4,0,0,0,0,4,0,0,0,0,0)
p = ggplot(orings, aes(x = Temperature,y = Damage)) +
  geom_jitter()+
  geom_rect(aes(xmin = 26, xmax = 29, ymin = -Inf, ymax = Inf),
            alpha = 0.1, fill = "pink") +
  annotate("text", x = 25, y = 1, hjust = 0,
           label="1996 年 1 月 27 日的天气预报，\n预测发射日 1 月 28 日的温度范围") +
  xlim(25, 85) +
  labs(x = "发射时温度 (华氏度)", y = "故障数量",
       title = "O型圈故障")
print(p)
