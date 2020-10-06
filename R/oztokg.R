#' oz-kg unit conversion function
#'
#' @param oz is the original number in oz unit
#'
#' @return kg
#' @export
#'
#' @examples
#' oztokg(oz = 1)
oztokg <- function(oz) {
  kg <- oz/35.274
  return(kg)
}
