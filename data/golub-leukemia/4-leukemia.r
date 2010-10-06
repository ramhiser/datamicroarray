library(rda)
library(plyr)
library(car)
library(mvtnorm)

rda.train <- rda(x = train.x, y = train.y, genelist = TRUE)

test.predict <- predict(object = rda.train, x = train.x, y = train.y, xnew = test.x)

# SCRDA "Min-Min" rule

# Which alpha-delta pairs give the minimum crossvalidated error rate?
min.cv.error <- rda.train$error == min(rda.train$error)

# Of those alpha-delta pairs, which gives the least number of genes?
min.genes <- min(rda.train$ngene[min.cv.error])

# This matrix contains the indices of all of the alpha-delta pairs that satisfy the "min-min" rule.
min.min.indices <- which(rda.train$ngene == min.genes, arr.ind = TRUE)

# Now we compute the corresponding alpha and lambda.
alpha.index <- min.min.indices[,1]
delta.index <- min.min.indices[,2]
alpha <- rda.train$alpha[alpha.index]
delta <- rda.train$delta[delta.index]
min.min.pairs <- data.frame(alpha = alpha, delta = delta)

# The selected variables (these are kept) are marked with a 1.
# The removed variables (these are thrown out) are marked with a 0.
selected.variables <- rda.train$gene.list[alpha.index, delta.index,]

reduced.x <- t(train.x[selected.variables == 1,])
scaled.x <- scale(reduced.x)
train.df <- cbind.data.frame(labels = train.y, scaled.x)


# Here we construct a sequence of transformation parameters that range from -3 to 3.
num.transform.params <- 15
transform.params <- seq(-3, 3, length = num.transform.params)

# For each column of scaled.x, we find the Yeo-Johnson (Y-J) transformation parameter that minimizes the Kolmogorov-Smirnov (K-S) test statistic.
lambda.hat <- aaply(scaled.x, 2,
	function(x.col) {
		transform.params[which.min(sapply(transform.params, function(lambda) ks.test(yjPower(x.col, lambda), "pnorm")$statistic))]
}, .progress = "text")

# After we find the lambdas that minimize the K-S test statistic, we transform the data with the Yeo-Johnson Power statistic.
transformed.x <- yjPower(scaled.x, lambda.hat)

training <- cbind.data.frame(labels = train.y, transformed.x)

n.1 <- nrow(transformed.x[train.y == 1,])
mean.1 <- colMeans(transformed.x[train.y == 1,])
cov.1 <- (n.1 - 1) * cov(transformed.x[train.y == 1,]) / n.1
test.1 <- rmvnorm(test.size, mean = mean.1, sigma = cov.1)

# Parametrically bootstrap test data from a multivariate normal distribution, where the parameters estimated with the MLEs.
test.size <- 3
test.data <- daply(training, .(labels),
	function(x.k) {
		n.k <- nrow(x.k)
		mean.k <- colMeans(x.k)
		cov.k <- (n.k - 1) * cov(x.k) / n.k
		
		rmvnorm(test.size, mean = mean.k, sigma = cov.k)
	}, .progress = "text")