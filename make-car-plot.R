library(tidyverse)
library(ggthemes)

car_plot <- mtcars %>%
              select(mpg, wt) %>%
              ggplot(aes(x = wt, y = mpg)) +
              geom_point() +
              geom_smooth(method = "lm", formula = "y ~ x", se = FALSE) +
              theme_clean() +
              labs(title = "Miles Per Gallon of Various Cars Compare to Their Weight",
                   subtitle = "Heavier cars are less efficient when it comes to fuel use.",
                   x = "Weight",
                   y = "Miles per Gallon",
                   caption = "Source: Henderson and Vellerman (1981)")
write_rds(car_plot, "car-plot.rds")
