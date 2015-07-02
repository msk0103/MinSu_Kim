# SKKU ISS 2015, Lecture 4
# Objective: plotting open government data

# Date:  7/2/2015

#clean variables
rm(list=ls(all=TRUE))

# read in data
P <- read.csv("C:/Users/GramMS/Documents/GitHub/SKKU_DataScience_2015/data_sets/UNdata_precipitation.csv")

# (1) Compare the precipitation from 1999 to 2005.  Are they different?

y1999 <- P[P$Year==1999,]

y2005 <- P[P$Year==2005,]

hist(y1999$Value)
hist(y2005$Value)

t.test(log10(y1999$Value), log10(y2005$Value))

# (2) Precipitation for all countries over time.

plot(P$Year, log10(P$Value))

y1990 <- P[P$Year==1990,]
y1995 <- P[P$Year==1995,]
y1996 <- P[P$Year==1996,]
y1997 <- P[P$Year==1997,]
y1998 <- P[P$Year==1998,]
y1999 <- P[P$Year==1999,]
y2000 <- P[P$Year==2000,]
y2001 <- P[P$Year==2001,]
y2002 <- P[P$Year==2002,]
y2003 <- P[P$Year==2003,]
y2004 <- P[P$Year==2004,]
y2005 <- P[P$Year==2005,]
y2006 <- P[P$Year==2006,]
y2007 <- P[P$Year==2007,]
y2008 <- P[P$Year==2008,]
y2009 <- P[P$Year==2009,]

plot(y1990$Country, log10(y1990$Value))
plot(y1995$Country, log10(y1995$Value))
plot(y1996$Country, log10(y1996$Value))
plot(y1997$Country, log10(y1997$Value))
plot(y1998$Country, log10(y1998$Value))
plot(y1999$Country, log10(y1999$Value))
plot(y2000$Country, log10(y2000$Value))
plot(y2001$Country, log10(y2001$Value))
plot(y2002$Country, log10(y2002$Value))
plot(y2003$Country, log10(y2003$Value))
plot(y2004$Country, log10(y2004$Value))
plot(y2005$Country, log10(y2005$Value))
plot(y2006$Country, log10(y2006$Value))
plot(y2007$Country, log10(y2007$Value))
plot(y2008$Country, log10(y2008$Value))
plot(y2009$Country, log10(y2009$Value))

