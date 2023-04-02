# First HandsOn
pacman::p_load(pacman, ggplot2, palmerpenguins)

# file.create("Saved result")

PenDF = data.frame(penguins)

ggplot(data = PenDF) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g))

ggplot(data = PenDF) + geom_point(mapping = aes(x = bill_length_mm, y = bill_depth_mm))

#I donno why this took me 3 days ;)
#                                ,

# ----------------------------------------------------------------------------------------------------------

# Second HandsOn

pacman::p_load(pacman, ggplot2)                            # Loaded all the required libraries

df = read.csv("Day08_Hotel Bookings.csv")                  # created a dataframe from the given dataset 
head(df)                                                      # displays an overview of the dataframe
colnames(df)                                               # Checking names of the columns

ggplot(data = df) +
  geom_point(mapping = aes(x = lead_time, y = children))  #1

ggplot(data = hotel_bookings) +
  geom_point(mapping = aes(x = stays_in_weekend_nights, y = children)) #2

# ----------------------------------------------------------------------------------------------------------

# Follow along:

ggplot(data = PenDF) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, color= species))

ggplot(data = PenDF) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape= species))

ggplot(data = PenDF) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g, shape = species, color= species))


ggplot(data = PenDF) + geom_point(mapping = aes(x = flipper_length_mm, y = body_mass_g), color= species)
