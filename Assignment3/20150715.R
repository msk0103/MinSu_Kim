
head(mtcars)

bad <- kmeans(mtcars, centers = 2)

plot(mtcars$mpg, mtcars$hp, col=bad$cluster, pch=16, cex=2, xlab="MPG", ylab="Horsepower")


textxy(carsmall$mpg, carsmall$hp, rownames(mtcars), cex=1.1)

cars_norm <- scale(mtcars)
d <- dist(cars_norm, method = "euclidean")
hc <- hclust(d, method = "complete")
plot(hc)

install.packages("klaR")
install.packages("caret")
install.packages("e1071")
install.packages("ggplot2")


library(klaR)
library(class)
library(gglot2)
library(lattice)
library(caret)
library(e1071)


head(iris)

data(iris)
summary(iris)

x = iris[,-5]
y = iris$Species

classifier <- naiveBayes(iris[,1:4], iris[,5])
table(predict(classifier,))


install.packages("ElemStatLearn")
library('ElemStatLearn')

sub = sample(nrow(spam), floor(nrow(spam)*0.9))
train = spam[sub,]
test = spam[-sub,]

xTrain = train[,-58]
yTrain = test$spam

model = train(xTrain,yTrain,'nb',trControl=trainControl(method = 'cv',number=10))

prop.table(table(predict(model$finalModel,xTest)$class,yTest))


