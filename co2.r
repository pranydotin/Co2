library(dplyr)
library(ggplot2)
data <- read.csv("./co2.csv")
head(data)
model <- lm(data$CO2.Emissions.g.km. ~ data$Cylinders)
model
data$Fuel.Consumption.City..L.100.km.
ggplot(data, aes(x = Fuel.Consumption.City..L.100.km., y = CO2.Emissions.g.km., color = Cylinders)) +
    geom_point() +
    geom_smooth(method = "lm", col = "red") +
    labs(
        title = "Regression of CO2 emmission on Fuel consumption",
        x = "Fuel Consumption City (L/100 km)",
        y = "Co2 Emmisions"
    ) +
    theme_classic() +
    theme(plot.title = element_text(hjust = 0.5))
