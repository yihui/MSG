#' Plot a graph with a pre-installed R script
#'
#' @param fig The figure number or the R script name, which is given in the book.
#'
#' @return A graph and the source code
#' @export
#'
#' @examples
#' msg(6.7)
#' msg("ChinaPop")
msg <- function(fig = 6.7, show_code = TRUE){
  source(system.file("examples", "_dtlist.R", package = "MSG"))
  if(class(fig) == "numeric") fig <- dtlist$graph[dtlist$nr == fig]
  rfile <- system.file("examples", paste0(fig, ".R"), package = "MSG")
  source(rfile, encoding = "UTF-8")
  if(show_code) cat(readLines(rfile, encoding = "UTF-8"), sep = '\n')
}
