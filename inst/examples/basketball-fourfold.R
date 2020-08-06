# 球场左右侧投篮命中的四瓣图
data(CLELAL09, package = "animation")
fourfoldplot(
  with(
    subset(CLELAL09, realy != 25),
    table(
      result,
      location = ifelse(
        (realy > 25 & team == "CLE") | (realy < 25 & team == "LAL"),
        "left", "right"
      ),
      team = droplevels(team)
    )
  ),
  mfrow = c(1, 2)
)
