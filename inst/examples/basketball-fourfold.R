# 球场左右侧投篮命中的四瓣图
data(CLELAL09, package = "animation")
levels(CLELAL09$team) = c("骑士", "湖人", "OFF")
levels(CLELAL09$result) = c("命中", "失败")
tb = with(
  subset(CLELAL09, realy != 25),
  table(
    `结果` = result,
    `位置` = ifelse(
      (realy > 25 & team == "骑士") | (realy < 25 & team == "湖人"),
      "左侧", "右侧"
    ),
    `球队` = droplevels(team)
  )
)
fourfoldplot(tb, mfrow = c(1, 2))
