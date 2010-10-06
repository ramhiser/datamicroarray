# We randomly select half of the observations as training data and the other half as test data.
rand.select <- sample(seq_len(nrow(colon.x)), 0.5 * nrow(colon.x))
colon.train <- cbind.data.frame(labels = colon.labels[rand.select], colon.x[rand.select,])
colon.test <- cbind.data.frame(labels = colon.labels[-rand.select], colon.x[-rand.select,])

# Currently, there's no need to separate the data randomly
# because the test data are the parametric bootstrapped replications.
# However, is this fair to use or at least to compare with other papers
# because often sacrifice training observations for real test data,
# rather than simulated observations as we are doing?
# For now, we combind the training and test data sets to make one single training data set,
# which should produce a more stable classifier.
colon.train <- rbind.data.frame(colon.train, colon.test)

library(plyr)
library(car)
library(mvtnorm)

# Here we construct a sequence of transformation parameters that range from -3 to 3.
num.transform.params <- 15
transform.params <- seq(-3, 3, length = num.transform.params)

# For each column of scaled.x, we find the Yeo-Johnson (Y-J) transformation parameter that minimizes the Kolmogorov-Smirnov (K-S) test statistic.
lambda.hat <- aaply(subset(colon.train, select = -labels), 2,
	function(x.col) {
		transform.params[which.min(sapply(transform.params, function(lambda) ks.test(yjPower(scale(x.col), lambda), "pnorm")$statistic))]
}, .progress = "text")

# After we find the lambdas that minimize the K-S test statistic, we transform the data with the Yeo-Johnson Power statistic.
transformed.x <- yjPower(as.matrix(subset(colon.train, select = -labels)), lambda.hat)
transformed.colon.train <- cbind.data.frame(labels = colon.train$labels, transformed.x)