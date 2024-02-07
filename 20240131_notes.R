# Data structures 
cats_df <- data.frame(coat = c("calico", "black", "tabby"),
                   weight = c(2.1, 5.0, 3.2),
                   likes_strings = c(1,0,1))
cats_df
str(cats_df)
cats_df$likes_strings
cats_df$weight + 2
paste("My cat is", cats_df$coat)

#Data structures
typeof(cats_df$weight)
typeof(TRUE)
typeof(cats_df$coat)

#Writing files
write.csv(x = cats_df, file = "cats_df.csv", row.names = FALSE, quote = FALSE)

# Matrix 
example_mat <- matrix(0, ncol = 6, nrow = 3)
example_mat

# Dimensions 
dim(example_mat)
dim(cats_df)

head(cats_df)
cats_df[3]

library(ggplot2)
download.file("https://raw.githubusercontent.com/swcarpentry/r-novice-gapminder/main/episodes/data/gapminder_data.csv", destfile = "gapminder_data.csv")

gapminder_df <- read.csv(file = "gapminder_data.csv")

ggplot(data = gapminder_df, mapping = aes(x = gdpPercap, y = lifeExp, color = continent)) +
  geom_point(alpha = 0.5) + labs(x = "GDP Per Capita", y = "Life Expectancy (yrs)") + facet_wrap(.~continent)

# Evaluate lifeExp by year 
ggplot(data = gapminder_df, mapping = aes(x = year, y = lifeExp, color = continent, group = country)) + geom_line() +
  geom_point(alpha = 0.5, aes(shape = continent, size = pop)) + labs(x = "GDP Per Capita", y = "Life Expectancy (yrs)") +
  geom_smooth()

