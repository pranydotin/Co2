library(dplyr)
library(ggplot2)
data <- read.csv("./co2.csv")
head(data)
model <- lm(data$CO2.Emissions.g.km. ~ data$Cylinders)
model

ggplot(data, aes(x = Cylinders, y = CO2.Emissions.g.km.)) +
    geom_point() +
    geom_smooth(method = "lm", col = "red") +
    labs(
        title = "Regression of CO2 emmission on Clyinders",
        x = "No of Cylinders",
        y = "Co2 Emmisions"
    ) +
    theme_minimal()
