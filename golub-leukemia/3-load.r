# Here we provide the training and test data sets as matrices rather than data frames.
train.y <- as.matrix(golub.train$labels)
train.y <- ifelse(train.y == "ALL", 1, 2)
train.x <- subset(golub.train, select = -labels)
# rda() expects the data matrix x to be of dimension p-by-n.
train.x <- t(data.matrix(train.x))

test.y <- as.matrix(golub.test$labels)
test.y <- ifelse(test.y == "ALL", 1, 2)
test.x <- subset(golub.test, select = -labels)
# rda() expects the data matrix x to be of dimension p-by-n.
test.x <- t(data.matrix(test.x))