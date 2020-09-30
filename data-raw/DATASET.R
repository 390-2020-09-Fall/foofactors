## code to prepare `DATASET` dataset goes here
library(tidyverse)

weightdata <- sample(20)
usethis::use_data(weightdata, overwrite = TRUE)
