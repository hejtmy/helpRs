#' Sets the encoding permanently to czech. takes into consideration the platform
#'
#' @param category what locale to change. Default to LC_ALL
#'
#' @return returns the original locale before the change
#' @export
#'
#' @examples
set_czech_locale <- function(category = "LC_ALL"){
  out <- Sys.getlocale()
  locale <- get_czech_platform_locale()
  Sys.setlocale(category = category, locale)
  return(out)
}

#' Returns the locale needed to process czech characters
#'
#' @description this is a wrapper to solve the fact R does not support
#' UTF-8 encoding on Windows
#'
#' @return character with specific output. 1250 on win and utf-8 on linux and mac
#' @export
#'
#' @examples
get_czech_platform_locale <- function(){
  if (.Platform$OS.type == 'windows') {
     return('English_United States.1250')
  } else {
    return('en_US.UTF-8')
  }
}
