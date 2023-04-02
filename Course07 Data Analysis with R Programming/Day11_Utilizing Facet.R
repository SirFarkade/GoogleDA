pacman::p_load(pacman, ggplot2)

df <- read.csv("Day08_Hotel Bookings.csv")

head(df)

colnames(df)


ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel))


ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel, fill=deposit_type))


ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel, fill=market_segment))


ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type)


ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~market_segment)


ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_grid(~deposit_type)


ggplot(data = df) +
  geom_bar(mapping = aes(x = distribution_channel)) +
  facet_wrap(~deposit_type~market_segment)
