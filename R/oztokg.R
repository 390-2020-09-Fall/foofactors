#' oz-kg unit conversion function
#'
#' @param oz
#'
#' @return kg
#' @export
#'
#' @examples
#' oztokg(1)
oztokg <- function(weight_oz) {
  weight_kg <- weight_oz/35.274
  return(weight_kg)
}
