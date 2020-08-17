library(DAAG)
library(ggplot2)
data(orings, package = "DAAG")
orings$Damage = c(11,4,4,2,0,0,0,0,0,0,4,0,4,0,0,0,0,4,0,0,0,0,0)
p = ggplot(orings, aes(x = Temperature,y = Damage)) +
  geom_jitter()+
  geom_rect(aes(xmin = 26, xmax = 29, ymin = -Inf, ymax = Inf),
            alpha = 0.1, fill = "pink") +
  annotate("text", x = 25, y = 1, hjust = 0,
           label="26$^{\\circ}$-29$^{\\circ}$ range of forecasted temperatures\n (as of January 27, 1986) for the launch\n of space shuttle Challenger on January 28") +
  xlim(25, 85) +
  labs(x = "Temperature ($^{\\circ}$F) of field joints at time of launch",
       title = "O-ring damage\n index, each launch")
print(p)
