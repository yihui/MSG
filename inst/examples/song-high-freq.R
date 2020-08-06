# 宋词前 100 高频词的关系网络图
library(igraph, warn.conflicts = FALSE)
load(system.file("extdata", "HighFreq100.rda", package = "MSG"))

g = graph.adjacency((HighFreq100 > 0.05) * HighFreq100,
                     mode = "undirected", weighted = TRUE, diag=FALSE)
cg = clusters(g)
colbar = as.numeric(as.factor(cg$csize[cg$membership + 1]))
V(g)$color = rev(heat.colors(9))[colbar]

ff = as.numeric(
  cut(E(g)$weight, breaks = c(0.05, 0.1, 0.2, 0.3, 0.4)), right=FALSE)
E(g)$width = 2 * (1:4)[ff]

col = c("greenyellow", "cadetblue1", "cornflowerblue",
         "blue", "darkblue")
E(g)$color = col[ff]
par(mar = c(0, 0, 0, 0))
set.seed(2011)
L.sc = layout.fruchterman.reingold(g, niter = 500)
plot(g,
     layout = L.sc, vertex.frame.color = NA,
     vertex.label = attr(V(g), "names"), vertex.label.cex = 0.6,
     vertex.label.color = grey(0.1),
     vertex.size = 8, vertex.label.family = "wqy-microhei"
)
legend(0.9, -0.5,
       c("[0.05,0.10)", "[0.10,0.20)", "[0.20,0.30)", "[0.30,0.40)"),
       col = col, lwd = sort(unique(E(g)$width)), cex = 0.8, bty = "n"
)
