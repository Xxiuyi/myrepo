library(spotifyr)
library(ggplot2)
library(gapminder)
library(spotifyr)
library(tidyverse)
library(usethis)
library(plotly)
library(cairo)

grammy <- get_playlist_audio_features("", "37i9dQZF1DWVGwK1DVdGDJ")
edison <- get_playlist_audio_features("", "37i9dQZF1DX08mhnhv6g9b")


juditha <- get_track_audio_features(c("2M5b9YLAgFroqWzeaZf86e", "3DBKc4ioGnMQLlbGQcFDIO"))
alla <- get_album_tracks("7oI0E3DdTbD85rhMg19GSU")
gilberto <- get_artist_audio_features("gilberto gil")
ecm <- get_playlist_audio_features("", "37i9dQZF1DX08mhnhv6g9b")

grammy |> ggplot(aes(x = valence, y = energy)) + geom_jitter() + geom_smooth()

