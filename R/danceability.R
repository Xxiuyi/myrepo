library(spotifyr)
library(ggplot2)
library(plotly)
library(compmus)

secondgg <- readRDS(file = "data/secondgg-data.RDS")
fourthgg <- readRDS(file = "data/fourthgg-data.RDS")

danceability_comparison <- rbind(cbind(secondgg, generation = "Second"), cbind(fourthgg, generation = "Fourth"))

ggplot(danceability_comparison, aes(x = generation, y = danceability, fill = generation)) +
  geom_boxplot() +
  labs(title = "Comparison of Danceability between Second and Fourth Generation K-pop",
       x = "Generation",
       y = "Danceability") +
  theme_minimal()

saveRDS(object = danceability_comparison, file = "data/danceability_comparison_gg-plot.RDS")

