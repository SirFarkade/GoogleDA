install.packages("tidyverse")
library(tidyverse)

bookings_df <- read_csv("Day08_Hotel Bookings.csv") # if in the same directory


head(bookings_df)
str(bookings_df)
colnames(bookings_df)
new_df <- select(bookings_df, `adr`, adults)
mutate(new_df, total = `adr` / adults)
