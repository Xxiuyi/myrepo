### asd
```{r, echo=FALSE}
secondb <-
  get_playlist_audio_features(
    "",
    "0UqgifAkmHt86pzVTfBcmS"
  ) |>
  slice(1:30) |>
  add_audio_analysis()
fourthb <-
  get_playlist_audio_features(
    "",
    "47AEDX1Vkw4Nh0ipx8eWTp"
  ) |>
  slice(1:30) |>
  add_audio_analysis()

boy <-
  secondb |>
  mutate(genre = "2nd gen boy group") |>
  bind_rows(fourthb |> mutate(genre = "4th gen boy group"))

boy |>
  mutate(
    sections =
      map(
        sections,                                    # sections or segments
        summarise_at,
        vars(tempo, loudness, duration),             # features of interest
        list(section_mean = mean, section_sd = sd)   # aggregation functions
      )
  ) |>
  unnest(sections) |>
  ggplot(
    aes(
      x = tempo,
      y = tempo_section_sd,
      colour = genre,
      alpha = loudness
    )
  ) +
  geom_point(aes(size = duration / 60)) +
  geom_rug() +
  theme_minimal() +
  ylim(0, 5) +
  labs(
    x = "Mean Tempo (bpm)",
    y = "SD Tempo",
    colour = "Genre",
    size = "Duration (min)",
    alpha = "Volume (dBFS)"
  )
```