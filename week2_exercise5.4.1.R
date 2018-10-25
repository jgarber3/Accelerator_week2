#unccoment this line if you havent installed the nycflights13 package
#install.packages("nycflights13")

library(tidyverse)
library(nycflights13)

View(flights)

#2 What happens if you include the name of a varialbe multiple times in a select call?
select(flights, dep_time, day, dep_time)
#answer it's ignored

#3 what does one_of function do? why mmight it be helpful with this vector?
#answer: it returns the columns where at least one of the names matches. It is useful when you arent sure the column names will have values.

#4 Whats suprising about this?
select(flights, contains("TIME"))
#answer: it's case agnostic and its a substring match
#answer: to make it case sensitive?
select(flights, contains("TIME", ignore.case = FALSE))