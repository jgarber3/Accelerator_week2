#unccoment this line if you havent installed the nycflights13 package
#install.packages("nycflights13")

library(tidyverse)
library(nycflights13)

View(flights)

#1 How could you use arrage() to sort all missing values to the start? 
#Notes: I didnt understand if this meant an example of any collumn but thats how i interpreted it
View(arrange(flights, !is.na(dep_time), dep_time))

#2 Sort flughts to find the most delayed flights. 
View(arrange(flights, desc(dep_delay)))
#2a Find the flights that left earliest
View(arrange(flights, year,month,day,dep_time))

#3 Find the fastest flights
View(arrange(flights, desc(distance/air_time)))

#4a travelled the longest
View(arrange(flights,desc(air_time)))
#4b travelled the shortest
View(arrange(flights,air_time))
