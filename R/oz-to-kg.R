#' OZ-KG unit conversion function
#'
#' @param weight in oz
#'
#' @return weight in kg
#' @export
#'
#' @examples
#' oz_to_kg(1)
oz_to_kg <- function(weight_oz) {
  weight_kg <- weight_oz/35.274
  return(weight_kg)
}
