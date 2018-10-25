#4.4 Exercise 1
#answer: there was a typo in the example where the character i was incorrect
my_variable <- 10
my_variable

#4.4 Excerise 2
#answer: the tidyverse packages wasnt installed on my machine so i installed it.
#install.packages("tidyverse")
library(tidyverse)

ggplot(data = mpg) +
  geom_point(mapping = aes(x = displ, y = hwy))

filter(mpg, cyl == 8)
filter(diamonds, carat > 3)