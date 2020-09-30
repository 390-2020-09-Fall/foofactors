#' oz-kg unit conversion function
#'
#' @param oz
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
