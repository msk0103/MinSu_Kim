
# Rolling dice to test Central Limit Theorm Simulation
for(i in 1:10000){
  d <- 100
  dice <- sample(1:6, d, replace = T)
  dice_mean[i] <- mean(dice)
}
hist(dice_mean, freq = F)


### Central Limit Theorm Simulation

# uniform distribution
# instructor's code

hist(runif(10000)*10,main="")
means <- numeric(10000)
for (i in 1:10000){
  means[i] <- mean(runif(5)*10)
}
hist(means,freq = F)
mean(means)
sd(means)
xv <- seq(0,10,0.1)
yv <- dnorm(xv, mean=mean(means),sd=sd(means))
lines(xv, yv)
