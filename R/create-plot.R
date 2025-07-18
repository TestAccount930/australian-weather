# Simple script analysing the Australian weather data

library("tidyverse")

# Read in the data (random change)

df = read_csv("data/weatherAUS.csv")

# Create a scatter plot of Humidity9am and Temp9am random change
# a location

# Some random comment change

city = "Sydney"

scatter_plot = 
df %>%
  filter(Location == city) %>%
  ggplot(aes(x = Temp9am, y = Humidity9am)) + 
  geom_point(colour = "cyan") # In main this is Cyan

# Save the plot in graphics/
ggsave(filename = "graphics/scatter-temp-humidity.png", plot = scatter_plot)
