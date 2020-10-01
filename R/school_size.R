## code to prepare `DATASET` dataset goes here
library(tidyverse)

schoolsize_data <- tibble(
  school = c("Amherst College", "Mount Holyoke College", "Smith College","University of Massachusetts, Amherst","Hampshire College"),
  size = c(1839, 2190, 2531, 24209, 1191)
)
usethis::use_data(schoolsize_data, overwrite = TRUE)


