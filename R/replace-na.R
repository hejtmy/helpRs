#' Replaces na values with given type
#'
#' @param vec vector in which to replace the NA values
#' @param replacement: "last.known", "number"
#' @param ...
#'
#' @noRd
replace_na <- function(vec, replacement = "last.known", ...){
  # neat hack from https://stackoverflow.com/questions/7735647/replacing-nas-with-latest-non-na-value
  if(replacement == "last.known"){
    if(is.na(vec[1])){
      vec[1] <- vec[!is.na(vec)][1] #needs to replace the first NA
    }
    vec <- na.omit(vec)[cumsum(!is.na(vec))]
    return(vec)
  }
}
