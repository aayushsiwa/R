# 4. Bubble Chart using ggplot2
if (!require(ggplot2)) install.packages("ggplot2")
library(ggplot2)

# Create a Bubble Chart using `mtcars` dataset
ggplot(mtcars, aes(x = wt, y = mpg, size = hp, color = cyl)) +  geom_point(alpha = 0.7) +
  scale_size(range = c(3, 10)) +
  labs(title = "Bubble Chart: Weight vs MPG", x = "Weight (wt)", y = "Miles Per Gallon (mpg)") +
  theme_minimal()