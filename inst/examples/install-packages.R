# 安装所有本书示例代码需要的附加包
path <- system.file("examples", package = "MSG")
filename <- list.files(path, full.names = TRUE)
filename <- filename[filename != file.path(path, "install-packages.R")]
libraris <- sapply(filename, function(i) {
  txt <- readLines(i, encoding = "UTF-8")
  gsub("^library\\(([^,\\)]+).*$", "\\1", grep("library(", txt, fixed = TRUE, value = TRUE))
}
)
pkgs <- unique(c(unlist(libraris), "remotes"))
pkgs <- pkgs[pkgs != "ncovr"]
lapply(pkgs, function(pkg)
  if (system.file(package = pkg) == "") install.packages(pkg)
)
if (system.file(package = "ncovr") == "") remotes::install_github("pzhaonet/ncovr")
