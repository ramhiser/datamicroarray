library('pamr')
data('khan')

# We remove the first two columns of the Khan data set because it contains meta data
# not directy useful to us for classification purposes.
khan.df <- t(khan[,-(1:2)])
dimnames(khan.df) <- NULL
khan.df <- data.frame(khan.df)

# The first column of the data frame contains the class labels after the transpose above.
p <- ncol(khan.df) - 1
colnames(khan.df) <- c("labels", paste("X", seq_len(p), sep = ""))

write.table(khan.df, "khan.csv", sep = ",", row = FALSE)
