library(readr)

lighthouses <- read_csv("data-raw/HistoricalLighthouses.csv")

usethis::use_data(lighthouses, overwrite = TRUE)

