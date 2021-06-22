#' Plot a graph with a pre-installed R script
#'
#' @param fig Character. The figure number or the R script name, which is given in the book.
#' @param show_code Logical. TRUE means the codes are shown in the console.
#' @param filter Integer. The line numbers indicating which lines in the code are displayed (when positive) or hidden (when negative).
#' @param print_plot Logical. TRUE means the graph is printed.
#'
#' @importFrom utils read.csv
#'
#' @return A graph and the source code
#' @export
#'
#' @examples
#' # msg("3.6")
#' # msg("ChinaPop")
msg = function(fig = "3.6", show_code = TRUE, print_plot = TRUE, filter = 0){
  graphnr = read.csv(system.file("extdata", "graphnr.csv", package = "MSG"), colClasses = "character")
  if (!is.character(fig)) fig = as.character(fig)
  if (!fig %in% c(graphnr$graph, graphnr$nr)) {
    return(message("This figure does not exist. Please double check."))
  }
  if (fig %in% graphnr$nr) {
    fig = graphnr$graph[graphnr$nr == fig]
  }
  rfile = system.file("examples", paste0(fig, ".R"), package = "MSG")
  if (print_plot) source(rfile, encoding = "UTF-8")
  if (show_code) {
    if (!0 %in% filter) rfile = rfile[filter]
    cat(readLines(rfile, encoding = "UTF-8"), sep = '\n')}
}
