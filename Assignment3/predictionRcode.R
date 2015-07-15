
bank <- read.csv("C:/Users/GramMS/Downloads/bank.csv")

plot(bank$duration[0:1000], bank$balance[0:1000])
bank.model <- lm(balance~duration, bank)
bank$pred <- predict(bank.model, bank)
points(bank$duration,bank$pred,col="blue", pch =16)


bank1 <- data.frame(balance = seq(1, 25, 0.5))
bank1$pred <- predict(bank.model, bank1)
points(bank1$duration$pred, col="green")
points(bank1$duration, bank1$pred, col="green", pch=3)