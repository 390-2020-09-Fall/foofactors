## code to prepare `DATASET` dataset goes here
library(tidyverse)

oztokg_data <- as.tibble(sample(20))
usethis::use_data(oztokg_data, overwrite = TRUE)
