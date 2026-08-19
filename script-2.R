library(tidyverse)

hist_p <- ggplot(diamonds, aes(x = carat)) +
	geom_histogram(binwidth = 0.1, boundary = 0, colour = "white") +
	labs(
		title = "Diamond Carat and Number of Diamonds",
		subtitle = "Most diamonds in the dataset weigh less than one carat.",
		x = "Carat",
		y = "Number of diamonds",
		caption = "Source: diamonds dataset from the ggplot2 package."
	)

ggsave(plot = hist_p, file = "diamonds.png")
