#' OZ-KG unit conversion function
#'
#' @param weight in oz
#'
#' @return weight in kg
#' @export
#'
#' @examples
#' oztokg(1)
oztokg <- function(weight_oz) {
  weight_kg <- weight_oz/35.274
  return(weight_kg)
}
