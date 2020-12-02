library(tidyverse)

Driver_Standings_data <- tibble(
  Driver = c("Lewis_Hamilton", "Valtteri_Bottas", "Max_Verstappen"),
  PTS = c(205, 161, 128)
)
usethis::use_data_raw(Driver_Standings_data, overwrite = TRUE)

