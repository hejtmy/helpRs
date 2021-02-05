#' Reports mean and standard devisation in APA style
#'
#' @param vec vector of numbers
#' @param digits how many digits to round thge number for
#'
#' @return
#' @export
#'
#' @examples
mean_and_sd_report <- function(vec, digits = 3){
  m <- round(mean(vec, na.rm = TRUE), digits)
  s <- round(sd(vec, na.rm = TRUE), digits)
  return(paste0("M = ", m, ", SD = ", s, collapse=""))
}

#' @export
#' @describeIn mean_and_sd_report
m_and_sd_report <- function(vec, digits = 3){
  .Deprecated(mean_and_sd_report)
  return(mean_and_sd_report(vec, digits))
}
