library(tidyverse)

# I ate chicken for dinner 

hist_p <- ggplot(data = diamonds, mapping = aes(x = carat)) +
	geom_histogram(binwidth = 0.1, boundary = 0) +
	labs(
		title = "Histogram of Carat (Weight) among 50,000 Diamonds",
		subtitle = "Carats just at or above meaningful numbers are very common",
		x = "Carat",
		y = "Number",
		caption = "diamonds dataset from ggplot2 package"
	)

ggsave(plot = hist_p, filename = "diamonds.png")
