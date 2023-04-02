pacman::p_load(pacman, ggplot2, tidyverse)

df <- read.csv("Day08_Hotel Bookings.csv")

head(df)


colnames(df)


ggplot(data = df) +
  geom_point(mapping = aes(x = lead_time, y = children))


ggplot(data = df) +
  geom_bar(mapping = aes(x = hotel, fill = market_segment))


ggplot(data = df) +
  geom_bar(mapping = aes(x = hotel)) +
  facet_wrap(~market_segment)


onlineta_city_hotels <- filter(df, 
                           (hotel=="City Hotel" & 
                             df$market_segment=="Online TA"))


View(onlineta_city_hotels)


onlineta_city_hotels_v2 <- df %>%
  filter(hotel=="City Hotel") %>%
  filter(market_segment=="Online TA")


View(onlineta_city_hotels_v2)


ggplot(data = onlineta_city_hotels) +
  geom_point(mapping = aes(x = lead_time, y = children))