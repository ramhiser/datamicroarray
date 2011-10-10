# Leukemia Data Set from Golub et al. (1999)
library('golubEsets')

# Because the ALL samples are either T-cell or B-cell, we may wish to consider the data
# in 3 classes.
# NOTE: The 'T.B.cell' is 'NA' for AML samples.
# By default, we only consider the original two classes (i.e. ALL or AML)
two_classes <- TRUE

# TODO:
# Rename file to 2-clean.r

# The training data set.
data('Golub_Train')
x <- t(exprs(Golub_Train))
y <- as.vector(pData(Golub_Train)$ALL.AML)

if(!two_classes) {
  y[pData(Golub_Merge)$T.B.cell == "B-cell"] <- "ALL-B"
  y[pData(Golub_Merge)$T.B.cell == "T-cell"] <- "ALL-T"
}

golub_train <- list(x = x, y = factor(y))

# The test data set.
data('Golub_Test')
x <- t(exprs(Golub_Test))
y <- as.vector(pData(Golub_Test)$ALL.AML)

if(!two_classes) {
  y[pData(Golub_Test)$T.B.cell == "B-cell"] <- "ALL-B"
  y[pData(Golub_Test)$T.B.cell == "T-cell"] <- "ALL-T"
}

golub_test <- list(x = x, y = factor(y))


# The combined training and test data sets.
data('Golub_Merge')
x <- t(exprs(Golub_Merge))
y <- as.vector(pData(Golub_Merge)$ALL.AML)

if(!two_classes) {
  y[pData(Golub_Merge)$T.B.cell == "B-cell"] <- "ALL-B"
  y[pData(Golub_Merge)$T.B.cell == "T-cell"] <- "ALL-T"
}

golub <- list(x = x, y = factor(y))

