#' Difference between Two Integers
#'
#' Create a new integer from the difference of two random integers, where new integer
#' is the absolute value of the difference of two input integers
#'
#' @param x integer
#' @param y integer
#'
#' @return absolute difference (integer)
#' @export
#' @examples
#'  fdiff(iris$Sepal.Length[1],iris$Sepal.Length[2])
fdiff <- function(x,y) {
  abs(x-y)
  }

