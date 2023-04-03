pacman::p_load(pacman, ggplot2, tidyverse)

df <- read.csv("Day08_Hotel Bookings.csv")

head(df)
colnames(df)


ggplot(data = df) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel)+
  labs(title="Hotel Type Comparison")


min(df$arrival_date_year)
max(df$arrival_date_year)

mindate <- min(df$arrival_date_year)
maxdate <- max(df$arrival_date_year)


ggplot(data = df) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       subtitle=paste0("Data from: ", mindate, " to ", maxdate))

ggplot(data = df) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate))


ggplot(data = df) +
  geom_bar(mapping = aes(x = market_segment)) +
  facet_wrap(~hotel) +
  theme(axis.text.x = element_text(angle = 45)) +
  labs(title="Comparison of market segments by hotel type for hotel bookings",
       caption=paste0("Data from: ", mindate, " to ", maxdate),
       x="Market Segment",
       y="Number of Bookings")

ggsave('hotel_booking_chart.png')

ggsave('hotel_booking_chart.png',
       width=,
       height=)

