library(spotifyr)
library(ggplot2)
library(plotly)
library(compmus)

ive <- get_tidy_audio_analysis("0Q5VnK2DYzRyfqQRJuUtvi")

graveola_plot <- ive |>
  tempogram(window_size = 8, hop_size = 1, cyclic = TRUE) |>
  ggplot(aes(x = time, y = bpm, fill = power)) +
  geom_raster() +
  scale_fill_viridis_c(guide = "none") +
  labs(x = "Time (s)", y = "Tempo (BPM)") +
  theme_classic()

saveRDS(object = graveola_plot, file = "data/tempogram-plot.RDS")

