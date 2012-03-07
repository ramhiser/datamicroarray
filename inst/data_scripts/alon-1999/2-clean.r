# Colon Cancer Data Set from Alon et al. (1999)
library('colonCA')
data('colonCA')

# Bioconductor requires exprs() on the data sets.
# We rename the columns of the data matrix because some of the microarray codes
# exceed 256 characters in length, which causes errors in subsequent code.
x <- t(exprs(colonCA))
colnames(x) <- paste("X", seq_len(ncol(x)), sep = "")
y <- colonCA@phenoData$class

alon <- list(x = x, y = factor(y))
