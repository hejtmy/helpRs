#' Espaces all regex special characters
#'
#' @param string
#'
#' @return
#' @export
#'
#' @examples
escape_regex <- function(string){
  return(gsub("([.|()\\^{}+$*?]|\\[|\\])", "\\\\\\1", string))
}
