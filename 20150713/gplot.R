
#raw data of my group's
tv_data <- read.csv("C:/Users/GramMS/Documents/GitHub/previou/traffic_Violations.csv", header = T, sep =",")

library(ggplot2)

??gglpot

#To make it numeric data. I use summary function to show the total numbers
data.frame((summary(tv_data$Color)))

#Data about the how many car colors have related to traffic accidents in Maryland.
c <- read.csv("C:/Users/GramMS/Documents/carcolor.csv", header = FALSE)

c

qplot(V1, V2, data=c, stat="summary", fun.y="sum")
