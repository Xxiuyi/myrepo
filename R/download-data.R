library(spotifyr)

secondgg <- get_playlist_audio_features("", "53gZC84IKZk5QoOqSwgUg9")

saveRDS(object = secondgg, file = "data/secondgg-data.RDS")

fourthgg <- get_playlist_audio_features("", "0XlcubxUyMwSOP3GOgzbQR")
secondbg <- get_playlist_audio_features("", "0UqgifAkmHt86pzVTfBcmS")
fourthbg <- get_playlist_audio_features("", "47AEDX1Vkw4Nh0ipx8eWTp")
