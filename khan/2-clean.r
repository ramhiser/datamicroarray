library('pamr')
data('khan')

# We remove the first two columns of the Khan data set because it contains meta data
# not directy useful to us for classification purposes.
data('khan')
gene_names <- khan[,1]
khan <- t(khan[,-(1:2)])
dimnames(khan) <- NULL
y <- factor(as.vector(khan[,1]))
x <- data.matrix(khan[,-1])
class(x) <- "numeric"
colnames(x) <- gene_names[-1]

khan <- list(x = x, y = y)