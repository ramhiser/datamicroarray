library(caret)

# variable selection using two sample t-test
alpha <- 0.01
var.select.pvals <- aaply(colon.x, 2, 
	function(col) {
		col.by.class <- split(col, temp.colon.labels)
		p.val <- t.test(col.by.class[[1]], col.by.class[[2]])$p.value
	})

filtered.x <- colon.x[, var.select.pvals < alpha]
transformed.x <- transformed.colon.train[, var.select.pvals < alpha]

colon.y <- colon.labels

num.tuning.params <- 10

set.seed(42)
num.splits <- 2
inTrain <- createDataPartition(temp.colon.labels, times = num.splits, p = 0.5)

# 1764 = 42^2
set.seed(1764)
sim.predictions <- laply(inTrain,
	function(train.select) {
		train.data <- filtered.x[train.select,]
		test.data <- filtered.x[-train.select,]
		train.class <- colon.y[train.select]
		test.class <- colon.y[-train.select]

		cvControl <- trainControl(method = "cv", number = 5)
		svm.radial.fit <- train(train.data, train.class,
						method = "svmRadial", trControl = cvControl,
						tuneLength = num.tuning.params, metric = "Accuracy")

		svm.poly.fit <- train(train.data, train.class,
						method = "svmPoly", trControl = cvControl,
						tuneLength = num.tuning.params, metric = "Accuracy")

		rda.grid <- expand.grid(.lambda = seq(0.05, 1.0, length = num.tuning.params), .gamma = seq(0.05, 1.0, length = num.tuning.params))
		rda.fit <- train(train.data, train.class,
						method = "rda", trControl = cvControl,
						tuneGrid = rda.grid, metric = "Accuracy")
						
		models <- list(svm.radial = svm.radial.fit, svm.poly = svm.poly.fit, rda = rda.fit)

		predValues <- extractPrediction(models, testX = test.data, testY = test.class)
		testValues <- subset(predValues, dataType == "Test")
	})
	
error.rates <- ldply(sim.predictions,
	function(predictions) {
		errors <- daply(predictions, .(model),
			function(model.predict) {
				mean(model.predict$obs != model.predict$pred)
			})
	})
	
	
# Compute error rates with transformed data
transformed.sim.predictions <- laply(inTrain,
	function(train.select) {
		train.data <- transformed.x[train.select,]
		test.data <- transformed.x[-train.select,]
		train.class <- colon.y[train.select]
		test.class <- colon.y[-train.select]

		cvControl <- trainControl(method = "cv", number = 5)
		svm.radial.fit <- train(train.data, train.class,
						method = "svmRadial", trControl = cvControl,
						tuneLength = num.tuning.params, metric = "Accuracy")

		svm.poly.fit <- train(train.data, train.class,
						method = "svmPoly", trControl = cvControl,
						tuneLength = num.tuning.params, metric = "Accuracy")

		rda.grid <- expand.grid(.lambda = seq(0.05, 1.0, length = num.tuning.params), .gamma = seq(0.05, 1.0, length = num.tuning.params))
		rda.fit <- train(train.data, train.class,
						method = "rda", trControl = cvControl,
						tuneGrid = rda.grid, metric = "Accuracy")
						
		models <- list(svm.radial = svm.radial.fit, svm.poly = svm.poly.fit, rda = rda.fit)

		predValues <- extractPrediction(models, testX = test.data, testY = test.class)
		testValues <- subset(predValues, dataType == "Test")
	})
	
transformed.error.rates <- ldply(transformed.sim.predictions,
	function(predictions) {
		errors <- daply(predictions, .(model),
			function(model.predict) {
				mean(model.predict$obs != model.predict$pred)
			})
	})
	

# Cross-validated Error Rates Using All of the Untransformed Data (after variable selection)
train.data <- filtered.x
test.data <- filtered.x
train.class <- colon.y
test.class <- colon.y

cvControl <- trainControl(method = "cv", number = 5)
svm.radial.fit <- train(train.data, train.class,
				method = "svmRadial", trControl = cvControl,
				tuneLength = num.tuning.params, metric = "Accuracy")

svm.poly.fit <- train(train.data, train.class,
				method = "svmPoly", trControl = cvControl,
				tuneLength = num.tuning.params, metric = "Accuracy")

rda.grid <- expand.grid(.lambda = seq(0.05, 1.0, length = num.tuning.params), .gamma = seq(0.05, 1.0, length = num.tuning.params))
rda.fit <- train(train.data, train.class,
				method = "rda", trControl = trainControl(number = 50),
				tuneGrid = rda.grid, metric = "Accuracy")

cv.error.rates <- data.frame(svmRadial = svm.radial.fit$finalModel@error,
								svmPoly = svm.poly.fit$finalModel@error,
								rda = rda.fit$finalModel$error.rate)


# Cross-validated Error Rates Using All of the Transformed Data (after variable selection)
train.data <- transformed.x
test.data <- transformed.x
train.class <- colon.y
test.class <- colon.y

cvControl <- trainControl(method = "cv", number = 5)
svm.radial.fit <- train(train.data, train.class,
				method = "svmRadial", trControl = cvControl,
				tuneLength = num.tuning.params, metric = "Accuracy")

svm.poly.fit <- train(train.data, train.class,
				method = "svmPoly", trControl = cvControl,
				tuneLength = num.tuning.params, metric = "Accuracy")

rda.grid <- expand.grid(.lambda = seq(0.05, 1.0, length = num.tuning.params), .gamma = seq(0.05, 1.0, length = num.tuning.params))
rda.fit <- train(train.data, train.class,
				method = "rda", trControl = cvControl,
				tuneGrid = rda.grid, metric = "Accuracy")

transformed.cv.error.rates <- data.frame(svmRadial = svm.radial.fit$finalModel@error,
								svmPoly = svm.poly.fit$finalModel@error,
								rda = rda.fit$finalModel$error.rate)