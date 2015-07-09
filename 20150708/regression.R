shopper1 <- c(20,32,35,34,40,51,52,56,57,68)
shopper2 <- c(23,34,36,44,42,51,54,57,54,62)

#1-a
plot(shop1, shop2)

#1-b
#The pattern shows that there is a correlation between two groups. positive. linear. strong.

#1-c 0.9690331
r <- cor(shop1, shop2)

#1-d 0.0780864
se <- sqrt((1-r^2)/(length((shop1)-2)))

#1-e 0.9690331
t.test(shop1, shop1)
cor.test(shop1, shop2)
cor.test(shop1, shop2)$conf.int

#2.

#2-a 0.9690331
shop2ex <- shop2 + 30
cor.test(shop1, shop2ex)
#No differences before and after.

#2-b 0.9690331
shop1ex <- shop1 * 100
cor.test(shop1ex, shop2)
#No differences before and after.

#3.
homerange <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8,3.1)
mortality <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,19,25,65)

#3-a
plot(homerange, mortality)

#3-b
linearmodel <- lm(mortality ~ homerange)
abline(linearmodel)

#3-c
# 
summary(linearmodel)
a <- linearmodel$coefficients[1]
b <- linearmodel$coefficients[2]

#3-d
homerange1 <- c(-1.3,-0.5,-0.3,0.2,0.1,0.5,1.0,0.3,0.4,0.5,0.1,0.2,0.4,1.3,1.2,1.4,1.6,1.6,1.8)
mortality1 <- c(4,22,0,0,11,13,17,25,24,27,29,33,33,42,33,20,19,25,25)
linearmodel1 <- lm(mortality1~homerange1)
abline(linearmodel1)
summary(linearmodel1)