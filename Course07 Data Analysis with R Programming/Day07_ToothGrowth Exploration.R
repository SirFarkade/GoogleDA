install.packages("dplyr")
library(dplyr)

data("ToothGrowth")
View(ToothGrowth)


filtered_tg <- filter(ToothGrowth, dose==0.5)
filtered_tg
View(filtered_tg)
arrange(filtered_tg, len)


# single line equivalent
arrange(filter(ToothGrowth, dose==0.5), len)


# piping:->
filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose==0.5) %>% 
  group_by(supp) %>% 
  summarize(mean_len = mean(len, na.rm=T), .group="drop")

View(filtered_toothgrowth)