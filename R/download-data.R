library(spotifyr)
library(ggplot2)
library(gapminder)
library(tidyverse)
library(plotly)
library(compmus)

secondgg <- get_playlist_audio_features("", "53gZC84IKZk5QoOqSwgUg9")
fourthgg <- get_playlist_audio_features("", "0XlcubxUyMwSOP3GOgzbQR")
secondbg <- get_playlist_audio_features("", "0UqgifAkmHt86pzVTfBcmS")
fourthbg <- get_playlist_audio_features("", "47AEDX1Vkw4Nh0ipx8eWTp")


corpus <- secondgg |>
  mutate(playlist = "Second gen girlgroup") |>
  bind_rows(fourthgg |> mutate(playlist = "Fourth gen girlgroup")) |>
  bind_rows(secondbg |> mutate(playlist = "Second gen boygroup"))
bind_rows(fourthbg |> mutate(playlist = "Fourth gen boygroup"))

corpus_all <- rbind(secondgg, secondbg, fourthgg, fourthbg)


saveRDS(object = secondgg, file = "data/secondgg-data.RDS")
saveRDS(object = fourthgg, file = "data/fourthgg-data.RDS")
saveRDS(object = secondbg, file = "data/secondbg-data.RDS")
saveRDS(object = fourthbg, file = "data/fourthbg-data.RDS")
saveRDS(object = corpus_all, file = "data/corpus-data.RDS")

