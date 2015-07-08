###1. The  data  below  are  the number of points scored in 30 games by the Portland Trailblazers.
score <- c(90,95,89,71,73,96,87,95,107,89,96,80,97,95,102,97,93,101,82,83,74,91,83,98,95,111,99,120,93,84)

##1-(a)
score_mean <- mean(score)
# 92.2

##1-(B)
# It is almost equal, but it can't be same as the population parameter. It is just a sample from the population.

##1-(c)
se <- function(x){sd(x)/sqrt(length(x))}
se(score)
# 1.976529

##1-(d)
# Gathering the distribution of the sample mean.

##1-(e)
t.test(score)
#95 percent confidence interval:
#88.15754 96.24246

##1-(f)
#95% of samples from the population, will get the mean value in the interval.

shapiro.test(score)

###2.

Male <- c(220.1,218.6,229.6,228.8,222.0,224.1,226.5)
Female <- c(223.4,221.5,230.2,224.3,223.8,230.8)

t.test(Male, Female, alternative = "less", var.equal = T)

#Two Sample t-test
#data:  Male and Female
#t = -0.62681, df = 11, p-value = 0.2718
#alternative hypothesis: true difference in means is less than 0
#95 percent confidence interval:
#  -Inf 2.655568
#sample estimates:
#  mean of x mean of y 
#224.2429  225.6667 

## p-value is more than 0.05, they are same.

###3.
##3-(a)
# False, the p-value not related to the size of the effect.

##3-(b)
# True, null hypothesis was rejected so there need to be some effect from the treatment.

##3-(c)
# False, p-value is less than 0.05. There is a difference between two groups.
##3-(d)
# False, the selected hypothesis is correct.
##3-(e)
# true
###4.
PersonA <- c(248,236,269,254,249,251,260,245,239,255)
PersonB <- c(380,391,377,392,398,374) * (2/3)
wilcox.test(PersonA, PersonB)

#Wilcoxon rank sum test

#data:  PersonA and PersonB
#W = 16, p-value = 0.1471
#alternative hypothesis: true location shift is not equal to 0

## P-value is more than 0.05, no difference between two groups.

###5.
# Standard error of mean is standard deviation of estimated the sample-mean.
# Standard deviation is differ from SE because standard deviation is only for a single set of sample group.
# So handling the larger samples(standard error of means) gets closer to the mean of population.

# Standard error of mean is calculating the percentage of estimating error rate of the mean.
# standard deviation is estimating the population's mean by estimating the sample's mean.
dice <- sample(1:6, 100, replace = T)
se(dice)
# 0,1598579
sd(dice)
#1.598579