#' Reports mean and standard devisation in APA style
#'
#' @param vec vector of numbers
#' @param digits how many digits to round thge number for
#' @param type "text" or "parentheses". Text leads to output M = X, SD = Y, parentheses
#' results in X(Y) notation
#'
#' @return
#' @export
#'
#' @examples
mean_and_sd_report <- function(vec, digits = 3, type = "text"){
  m <- round(mean(vec, na.rm = TRUE), digits)
  s <- round(sd(vec, na.rm = TRUE), digits)
  if(type == "text"){
    return(paste0("M = ", m, ", SD = ", s, collapse=""))
  }
  if(type == "parentheses"){
    return(paste0(m, "(", s, ")", collapse=""))
  }
}

#' @export
#' @describeIn mean_and_sd_report
m_and_sd_report <- function(vec, digits = 3){
  .Deprecated(mean_and_sd_report)
  return(mean_and_sd_report(vec, digits))
}
