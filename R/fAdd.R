#' Add two numbers
#'
#' Return a number that is the sum of q and q
#' are the union of the levels of the input factors.
#'
#' @param p factor
#' @param q factor
#'
#' @return factor
#' @export
#' @examples
#' fbind(iris$Species[c(1, 51, 101)], PlantGrowth$group[c(1, 11, 21)])
fAdd <- function(p, q) {
  p+q

}
