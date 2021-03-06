# In R, roll two dice and sum their scores

dice1 <- sample(1:6, replace = T)
dice2 <- sample(1:6, replace = T)

sum_dice <- dice1 + dice2


#Plot your results for 10 experiments, 100 experiments and 10000 experiments

# rolling dice for 10 experiments
d <- 10
dice1 <- sample(1:6, d, replace = T)
dice2 <- sample(1:6, d, replace = T)

sum_dice <- dice1 + dice2

hist(sum_dice)

# rolling dice for 100 experiments
d <- 100
dice1 <- sample(1:6, d, replace = T)
dice2 <- sample(1:6, d, replace = T)

sum_dice <- dice1 + dice2

hist(sum_dice)

# rolling dice for 10000 experiments
d <- 10000
dice1 <- sample(1:6, d, replace = T)
dice2 <- sample(1:6, d, replace = T)

sum_dice <- dice1 + dice2

hist(sum_dice)

# cummulative distribution plot.

plot.ecdf(sum_dice, main="cummulative distribution")


# normal distribution

n <- rnorm(1000, mean = 3, sd=10)

hist(n, main = "Normal Distribution")

# Z score

myheight <- 68.5
mean_height <- 70
sd_height <- 5

z <- (myheight-mean_height)/sqrt(sd_height)

z
