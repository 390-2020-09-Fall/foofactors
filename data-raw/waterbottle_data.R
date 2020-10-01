## code to prepare `DATASET` dataset goes here
library(tidyverse)

waterbottle_data <- tibble(
  name = c("Maya", "Lauren", "Albert"),
  bottle_type = c("HydroFlask", "Nalgene", "PolandSpring")
)
usethis::use_data(waterbottle_data, overwrite = TRUE)
