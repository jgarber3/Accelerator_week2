#unccoment this line if you havent installed the nycflights13 package
#install.packages("nycflights13")

library(tidyverse)
library(nycflights13)

View(flights)

#1.1 Had an Arrival delay of two or more hours
(filter(flights,arr_delay >= 120))

#1.2 Flew to Houston (IAH or HOU)
View(filter(flights, dest == "IAH" | dest == "HOU"))

#1.3 Were opereated by United, American or Delta
View(filter(flights, carrier == "UA" | carrier == "AA" | carrier == "DL"))

#1.4 Departed in Summer
View(filter(flights, month == 7 | month == 8 | month == 9))

#1.5 Arrived more than 2 hours late but didnt leave late
View(filter(flights, arr_delay > 120 & dep_delay <=0))

#1.6 Were delayed by at least 1 hour but made up over 30 minutes in flight
View(filter(flights, dep_delay >= 60 & arr_delay < (dep_delay - 30)))

#1.7 Departed between midnight and 6am inclusive
View(filter(flights, dep_time >= 0 & dep_time <= 600))

#2 Use between
View(filter(flights, between(dep_time,0,600)))

#3 How many flights have a missing dep_time?
count(filter(flights, is.na(dep_time)))
#they represent cancelled flights

#4 NA ^ 0 = 1 and 1 evaluates to TRUE
#4 NA | TRUE evaluates to TRUE because anything or TRUE evaluates to TRUE

