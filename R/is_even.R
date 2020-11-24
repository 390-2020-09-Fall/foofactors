#' Check if number(s) is/are even
#'
#' @param nums numeric
#'
#' @return logical
#' @export
#'
#' @examples
#' is_even(3)
#' is_even(c(4,5))
 is_even <- function(nums) {
  results <- nums %% 2 == 0
  return(results)
}
