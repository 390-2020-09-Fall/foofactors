#' Check if a number or numbers is/are odd.
#'
#' @param n numeric
#'
#' @return logical
#' @export
#'
#' @examples
#' is_odd(1)
#' is_odd(2)
#' is_odd(c(3,4))
is_odd <- function(n) {
  parity <- n %% 2 != 0
  return(parity)
}
