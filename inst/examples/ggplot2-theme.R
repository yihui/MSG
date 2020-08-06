# ggplot2 主题演示
library(ggplot2)
p0 = ggplot(aes(x = mpg, y = wt), data = mtcars) +
  geom_point() # 默认主题下的图
themes = c("theme_gray()", "theme_bw()",
            "theme_classic()", "theme_dark()",
            "theme_linedraw()", "theme_light()",
            "theme_minimal()", "theme_test()",
            "theme_void()", "cowplot::theme_minimal_hgrid()")
add_text = function(x) annotate("text", x = 35, y = 5, label = x,
                                 size = 6, color = "blue", hjust = 1)
p_themes = lapply(themes,
                   function(x) p0 + eval(parse(text = x)) + add_text(x))
Rmisc::multiplot(plotlist = p_themes,
                 layout = matrix(1:10, ncol = 2, byrow = TRUE))
