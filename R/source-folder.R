#' Sources files from a folder to a given depth
#'
#' @param folder
#' @param depth if 0, then the depth is endless
#'
#' @return evaluates in Global env
#' @export
#'
#' @examples
source_folder <- function(folder, depth = 0, env = .GlobalEnv){
  files <- list.files(folder, "*.[Rr]")
  eval(sapply(files), envir = env)
}
