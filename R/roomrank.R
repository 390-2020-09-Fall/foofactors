globalVariables(c("SouthwestFacing", "Corner", "NotNearBathroom", "Score"))

#' Rank dorm rooms
#'
#' Ranks a data frame of a selection of Smith College dorm rooms from most
#' favorable to least favorable based on which of the following features it
#' has: southwest-facing, in a corner, and not near a bathroom.
#'
#' @importFrom dplyr %>%
#'
#' @param room_df room dataframe
#'
#' @return A tibble
#' @export
#'
#' @examples
#' roomrank(room_data)

roomrank <- function(room_df) {
  room_df %>%
    dplyr::mutate(Score = SouthwestFacing + Corner + NotNearBathroom) %>%
    dplyr::arrange(Score)
}
