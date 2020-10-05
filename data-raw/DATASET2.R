## code to prepare `DATASET` dataset goes here
library(tidyverse)

ownercat_data <- tibble(
  Owner = c("Bob", "Sarah", "Olivia"),
  catname = c("Mooncake", "Cheese", "Oreo")
)
usethis::use_data(ownercat_data, overwrite = TRUE)

