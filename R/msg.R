#' Plot a graph with a pre-installed R script
#'
#' @param fig The figure number or the R script name, which is given in the book.
#' @param show_code Logical. TRUE means the codes are shown in the console.
#' @param print_plot Logical. TRUE means the graph is printed.
#' @importFrom utils read.csv
#'
#' @return A graph and the source code
#' @export
#'
#' @examples
#' # msg(3.6)
#' # msg("ChinaPop")
msg = function(fig = 3.6, show_code = TRUE, print_plot = TRUE){
  graphnr = read.csv(system.file("extdata", "graphnr.csv", package = "MSG"))
  if(is.numeric(fig)) fig = graphnr$graph[graphnr$nr == fig]
  rfile = system.file("examples", paste0(fig, ".R"), package = "MSG")
  if(print_plot) source(rfile, encoding = "UTF-8")
  if(show_code) cat(readLines(rfile, encoding = "UTF-8"), sep = '\n')
}
