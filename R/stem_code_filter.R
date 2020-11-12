#' Select data using stem code
#'
#' @description Filters ForestGeo's SCBI tree census data by stem code. Allows user to select for or exclude entries based on the presence of user-defined stem code(s). Please reference the following website for stem code definitions: \url{https://github.com/SCBI-ForestGEO/SCBI-ForestGEO-Data/blob/master/tree_main_census/metadata/SCBI_stem_codes.pdf}.
#' @import dplyr
#'
#' @param df data frame
#' @param stem_code character or list
#' @param include logical; TRUE will filter the data frame to include only entries containing the given stem code(s) and FALSE will remove all entries containing the given code(s)
#'
#' @return data frame
#' @export
#'
#' @examples
#' stem_code_filter(treecensus, "F", include = FALSE)
#' my_codes <- c("A", "M", "DC", "D", "B")
#' stem_code_filter(treecensus, my_codes)
#'

stem_code_filter <- function(df, stem_code, include = TRUE) {

  # Binding global variables to function (fixing check() note)
  codefind <- codes <- codeselect <- NULL


  # Changing/standardizing missing-value code
  df <- df %>% mutate(codes = as.character(codes))
  df <- df %>% mutate(codes = ifelse(codes == "NULL", NA, codes))

  # Renaming codes that have two or more characters

  df <- df %>% mutate(codefind = codes)

  twochr <- c("DC", "DN", "DS", "DT", "TR", "WR", "lost")
  twochr_new <- c(1:7)

  a <- 1

  for (i in twochr) {

    df <- df %>%
      mutate(codefind = ifelse(grepl(i, codefind), gsub(i, twochr_new[a], codefind), codefind))

    for (j in stem_code) {

      twochr_logical <- ifelse(grepl(i, j), 1, 0)

      if (twochr_logical > 0) {
        stem_code <- gsub(i, twochr_new[a], stem_code)
      }

      else{stem_code}
    }

    a <- a + 1
  }


  # Searching for user selected codes

  df <- df %>% mutate(codeselect = "ignore")

  for (j in stem_code) {
    df <- df %>%
      mutate(codeselect = ifelse(grepl(j, codefind), "select", codeselect))
  }


  # Removing added columns and filtering
  ## default 'include = TRUE': filter to only include rows with selected codes
  ## alternative 'include = FALSE': filter to exclude rows with selected codes

  if (include == TRUE) {
    df <- df %>% filter(codeselect == "select")
  }

  else {
    df <- df %>% filter(codeselect != "select")
  }

  df %>%
    dplyr::select(-codefind, -codeselect)

}
