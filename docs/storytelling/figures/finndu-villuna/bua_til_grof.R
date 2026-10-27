
library(ggplot2)

# Sömu gögn notuð í báðum gröfum
gogn <- data.frame(
  ar = factor(c("2024", "2025"), levels = c("2024", "2025")),
  anaegja = c(82, 86)
)

# Graf 1: Villandi Y-ás sem byrjar í 80
villandi <- ggplot(gogn, aes(x = ar, y = anaegja)) +
  geom_col(fill = "#C46B55", width = 0.55) +
  geom_text(aes(label = paste0(anaegja, "%")), vjust = -0.5) +
  coord_cartesian(ylim = c(80, 90)) +
  labs(
    title = "Ánægja viðskiptavina",
    x = "Ár",
    y = "Ánægja (%)"
  ) +
  theme_minimal()

ggsave(
  "docs/storytelling/figures/finndu-villuna/villandi-sulurit.png",
  villandi, width = 6, height = 4, dpi = 160
)

# Graf 2: Skýrari Y-ás sem byrjar í 0
skyrt <- ggplot(gogn, aes(x = ar, y = anaegja)) +
  geom_col(fill = "#4084A3", width = 0.55) +
  geom_text(aes(label = paste0(anaegja, "%")), vjust = -0.5) +
  scale_y_continuous(limits = c(0, 100)) +
  labs(
    title = "Ánægja viðskiptavina",
    x = "Ár",
    y = "Ánægja (%)"
  ) +
  theme_minimal()

ggsave(
  "docs/storytelling/figures/finndu-villuna/skyrt-sulurit.png",
  skyrt, width = 6, height = 4, dpi = 160
)

cat("Bæði gröfin hafa verið vistuð!\n")
