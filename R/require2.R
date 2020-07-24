install.packages2 <- function(pkg){
    if (system.file(package = pkg) == "") install.packages(pkg)
}

install_github2 <- function(pkg){
  install.packages2("remotes")
  if (system.file(package = basename(pkg)) == "") remotes::install_github(pkg)
}

#' Load packages with automatic installation if not installed
#'
#' @param pkgs package names
#'
#' @return install packages
#' @export
#'
#' @examples
#' pkgs <- c( "alphahull", "animation", "aplpack", "bookdown","ropensci/rnaturalearthhires", "GuangchuangYu/nCov2019")
#' require2(pkgs)
require2 <- function(pkgs){
  pkgs_n <- grepl("/", pkgs)
  pkgs_cran <- pkgs[!pkgs_n]
  pkgs_github <- pkgs[pkgs_n]
  if(length(pkgs_cran > 0)) lapply(pkgs_cran, install.packages2)
  if(length(pkgs_github > 0)) lapply(pkgs_github, install_github2)
  y <- lapply(basename(pkgs), require, character.only = TRUE)
  return(unlist(y))
}
