library(tidyverse)

Driver_Standings <- tibble(
  Driver = c("Lewis_Hamilton", "Valtteri_Bottas", "Max_Verstappen"),
  PTS = c(205, 161, 128)
)

usethis::use_data(Driver_Standings, overwrite = TRUE)

