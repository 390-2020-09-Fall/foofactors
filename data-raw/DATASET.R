## code to prepare `DATASET` dataset goes here
library(tidyverse)

toy_data <- tibble(
  name = c("Guy Incognito", "Cosme Fulanito", "Albert Y. Kim"),
  number = c(9, 79, 76)
)

usethis::use_data_raw(toy_data, overwrite = TRUE)
