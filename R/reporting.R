#' Reports mean and standard devisation in APA style
#'
#' @param vec vector of numbers
#' @param digits how many digits to round thge number for
#'
#' @return
#' @export
#'
#' @examples
m_and_sd_report <- function(vec, digits=3){
  m <- round(mean(vec, na.rm = TRUE), digits)
  s <- round(sd(vec, na.rm=T), digits)
  return(paste("M = ", m, ", SD = ", s, collapse=""))
}
