# SKKU ISS 2015, Lecture 4
# Objective: plotting open government data

# Date:  7/2/2015

#clean variables
rm(list=ls(all=TRUE))

# read in data
CO2 <- read.csv("C:/Users/GramMS/Documents/GitHub/MinSu_Kim/Assignmet_Plot/CO2_Emission.csv")

# (1) Compare the precipitation from 1999 to 2005.  Are they different?

hist(log10(CO2$X1999))
hist(log10(CO2$X2005))

t.test(log10(CO2$X1999), log10(CO2$X2005))

# (2) Precipitation for all countries over time.


plot(CO2$Country.Name, log10(CO2$X1999))
plot(CO2$Country.Name, log10(CO2$X2000))
plot(CO2$Country.Name, log10(CO2$X2001))
plot(CO2$Country.Name, log10(CO2$X2002))
plot(CO2$Country.Name, log10(CO2$X2003))
plot(CO2$Country.Name, log10(CO2$X2004))
plot(CO2$Country.Name, log10(CO2$X2005))
plot(CO2$Country.Name, log10(CO2$X2006))
plot(CO2$Country.Name, log10(CO2$X2007))
plot(CO2$Country.Name, log10(CO2$X2008))
plot(CO2$Country.Name, log10(CO2$X2009))
plot(CO2$Country.Name, log10(CO2$X2010))