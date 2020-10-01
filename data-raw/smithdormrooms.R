library(tidyverse)
library(here)
library(usethis)

# Load data on all available dorm rooms at Smith College
available_rooms <- here::here("data-raw/smithdormrooms.csv") %>%
  read_csv() %>%
  select(-`Bed Name`)

# Rooms in Cushing House that have southwest-facing windows which get the best light
southwest_facing <- c(
  "217", "218", "220", "221", "222", "223", "201", "202", "203", "204", "205", "206", "207",
  "320", "321", "322", "323", "324", "325", "326", "301", "302", "303", "304", "305", "306", "307",
  "402", "404", "405", "414", "415", "416", "412"
)

# Rooms in Cushing House that are in a corner and therefore have multiple windows and only have one neighbor
corner <- c(
  "413", "405", "406",
  "321", "307", "308",
  "218", "207", "208"
)

# Rooms that are located near bathrooms
near_bathroom <- c(
  "214", "222", "223", "213", "201", "202",
  "314", "313", "325", "326", "301", "302",
  "408", "402"
)

room_data <- available_rooms %>%
  filter(`Hall` == "Cushing House") %>% # Only include rooms available in Cushing House
  filter(`Room Type` == "Single") %>% # Only include single rooms
  mutate(
    SouthwestFacing = if_else(`Room` %in% southwest_facing, 1, 0),
    Corner = if_else(`Room` %in% corner, 1, 0),
    NotNearBathroom = if_else(`Room` %in% near_bathroom, 0, 1) # Note: Being near a bathroom isn't optimal for noise, so the binary is swapped
  )

usethis::use_data(room_data, overwrite = TRUE)
