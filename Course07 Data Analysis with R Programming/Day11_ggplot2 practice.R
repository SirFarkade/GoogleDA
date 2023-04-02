setwd("F:/R/Google")

pacman::p_load(pacman, ggplot2)

df = read.csv("circle rate pune.csv")

colnames(df)
head(df)

plot(df$Circle.Rate...Plotted.development, df$Circle.Rate...Flats.Multi...Stories)

colnames(iris)

ggplot(data=iris)+
  geom_point(mapping=aes(x="Sepal.Length", y="Sepal.Width"))+
  facet_grid(Sepal.Length~Sepal.Width)
