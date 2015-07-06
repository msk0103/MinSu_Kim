# In R, roll two dice and sum their scores

dice1 <- sample(1:6, replace = T)
dice2 <- sample(1:6, replace = T)

sum_dice <- dice1 + dice2


# Plot your results for 10 experiments, 100 experiments and 10000 experiments

dice_sample_10_1 <- sample(1:6, 10, replace = T)
dice_sample_10_2 <- sample(1:6, 10, replace = T)

hist(dice_sample_10_1 + dice_sample_10_2)

dice_sample_100_1 <- sample(1:6, 10^2, replace = T)
dice_sample_100_2 <- sample(1:6, 10^2, replace = T)

hist(dice_sample_100_1 + dice_sample_100_2)


dice_sample_10000_1 <- sample(1:6, 10^4, replace = T)
dice_sample_10000_2 <- sample(1:6, 10^4, replace = T)

hist(dice_sample_10000_1 + dice_sample_10000_2)


# What have you learned?