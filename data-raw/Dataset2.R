library(tidyverse)

F1_Drivers_Standings <- tibble(
  Driver = c("Lewis_Hamilton", "Valtteri_Bottas", "Max_Verstappen"),
  PTS = c(205, 161, 128)

)

usethis::use_data(F1_Drivers_Standings, overwrite = TRUE)
