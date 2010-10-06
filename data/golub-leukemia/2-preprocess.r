# Leukemia Data Set from Golub et al. (1999)
library(golubEsets)
data(Golub_Train)


# Bioconductor requires exprs() on the data sets.
golub.train <- exprs(Golub_Train)
golub.labels <- Golub_Train@phenoData@data$ALL.AML
golub.train <- data.frame(labels = golub.labels, t(golub.train))

data(Golub_Test)

golub.test <- exprs(Golub_Test)
golub.testlabels <- Golub_Test@phenoData@data$ALL.AML
golub.test <- data.frame(labels = golub.testlabels, t(golub.test))