rfiles <- list.files(system.file("examples", package = "MSG"), pattern = "^[^_]*.R")
rfiles <- gsub(".R", "", rfiles)
dtlist <- data.frame(nr = c(6.7, 3.6),
                     graph = rfiles)
