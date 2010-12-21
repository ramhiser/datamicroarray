# Colon Cancer Data Set from Alon et al. (1999)
library(colonCA)
data(colonCA)

# Bioconductor requires exprs() on the data sets.
# We rename the columns of the data matrix because some of the microarray codes
# exceed 256 characters in length, which causes errors in subsequent code.
colon.x <- t(exprs(colonCA))
colnames(colon.x) <- paste("X", seq_len(ncol(colon.x)), sep = "")
colon.labels <- colonCA@phenoData$class

colon.df <- data.frame(labels = colon.labels, colon.x)

write.table(colon.df, "colon-cancer.csv", sep = ",", row = FALSE)