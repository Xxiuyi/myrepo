# Analyze and visualize differences for other features

# Chroma features comparison
second_gen_audio_features <- readRDS(file = "data/secondgg-data.RDS")
fourth_gen_audio_features <- readRDS(file = "data/fourthgg-data.RDS")

chroma_features <- subset(second_gen_audio_features, select = c("track_id", paste0("chroma_", 1:12)))
second_gen_chroma <- cbind(chroma_features, generation = "Second Gen")
chroma_features <- subset(fourth_gen_audio_features, select = c("track_id", paste0("chroma_", 1:12)))
fourth_gen_chroma <- cbind(chroma_features, generation = "Fourth Gen")

chroma_comparison <- rbind(second_gen_chroma, fourth_gen_chroma)

# Visualize
ggplot(chroma_comparison, aes(x = generation, y = chroma_1, fill = generation)) +
  geom_boxplot() +
  labs(title = "Comparison of Chroma Feature 1 between Second and Fourth Generation K-pop",
       x = "Generation",
       y = "Chroma Feature 1") +
  theme_minimal()

# Timbre features comparison (example with first timbre feature)
timbre_features <- subset(second_gen_audio_features, select = c("track_id", paste0("timbre_", 1:12)))
second_gen_timbre <- cbind(timbre_features, generation = "Second Gen")
timbre_features <- subset(fourth_gen_audio_features, select = c("track_id", paste0("timbre_", 1:12)))
fourth_gen_timbre <- cbind(timbre_features, generation = "Fourth Gen")

timbre_comparison <- rbind(second_gen_timbre, fourth_gen_timbre)

# Visualize
ggplot(timbre_comparison, aes(x = generation, y = timbre_1, fill = generation)) +
  geom_boxplot() +
  labs(title = "Comparison of Timbre Feature 1 between Second and Fourth Generation K-pop",
       x = "Generation",
       y = "Timbre Feature 1") +
  theme_minimal()

# Tonal analysis comparison
# You can use features like mode, key, etc. to compare tonality between generations

# Temporal features comparison (example with tempo)
temporal_features <- subset(second_gen_audio_features, select = c("track_id", "tempo"))
second_gen_tempo <- cbind(temporal_features, generation = "Second Gen")
temporal_features <- subset(fourth_gen_audio_features, select = c("track_id", "tempo"))
fourth_gen_tempo <- cbind(temporal_features, generation = "Fourth Gen")

tempo_comparison <- rbind(second_gen_tempo, fourth_gen_tempo)

# Visualize
ggplot(tempo_comparison, aes(x = generation, y = tempo, fill = generation)) +
  geom_boxplot() +
  labs(title = "Comparison of Tempo between Second and Fourth Generation K-pop",
       x = "Generation",
       y = "Tempo (BPM)") +
  theme_minimal()
