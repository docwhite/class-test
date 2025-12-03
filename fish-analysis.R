library(dplyr)
library(readr)

# Analyze the relationship between fish size and scale size

fish_data = read_csv("data/Gaeta_etal_CLC_data.csv")

fish_data_cat <- fish_data |>
  mutate(length_cat = ifelse(length > 300, "big", "small")) |>
  filter(scalelength >=1)
