#Assignment: ASSIGNMENT 11
#Name: Michael, Colin
#Date: 2021-11-19


setwd("/Users/colinmichael/Desktop/Data Science/DSC520")

binary_df <- read.csv("binary-classifier-data.csv")

trinary_df <- read.csv("trinary-classifier-data.csv")

binary_df
trinary_df

library(ggplot2)
ggplot(binary_df, aes(x=x, y=y, color = label)) + geom_point()

ggplot(trinary_df, aes(x=x, y=y, color = label)) + geom_point()

#euclidean_binary <- function(binary_df$x, binary_df$y) sqrt(sum((x1 - x2) ^ 2))

x1 <- binary_df$x
y1 <- binary_df$y

x2<- trinary_df$x
y2<- trinary_df$y

binary_two <- data.frame(x1, y1)
binary_two

trinary_two <- data.frame(x2, y2)
trinary_two

dist(binary_two, method = "euclidean")
dist(trinary_two, method = 'euclidean')


binary_df

myvars <- c("x", "y")
binary.subset <- binary_df[myvars]

summary(binary.subset)


set.seed(123) 
test <- 1:100
train.binary <- binary.subset[-test,]
test.binary <- binary.subset[test,]

train.def <- binary_df$Default[-test]
test.def <- binary_df$Default[test]


library(class)

knn.1 <-  knn(train.binary, test.binary, train.def, k=3)
knn.5 <-  knn(train.binary, test.binary, train.def, k=5)
knn.10 <- knn(train.binary, test.binary, train.def, k=10)
knn.1 <-  knn(train.binary, test.binary, train.def, k=15)
knn.5 <-  knn(train.binary, test.binary, train.def, k=20)
knn.10 <- knn(train.binary, test.binary, train.def, k=25)



