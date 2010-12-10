# Acute Lymphoblastic Leukemia (ALL) Data Set from Chiaretti et al. (1999)
library('ALL')
data('ALL')

# Bioconductor requires exprs() on the data sets.
# We rename the columns of the data matrix because some of the microarray codes
# exceed 256 characters in length, which causes errors in subsequent code.
ALL.x <- t(exprs(ALL))
colnames(ALL.x) <- paste("X", seq_len(ncol(ALL.x)), sep = "")
ALL.labels <- ALL@phenoData$mol.biol

ALL.df <- data.frame(labels = ALL.labels, ALL.x)

# As in Xu et al. (2009), we only consider the samples with
# molecular biology classiﬁcation NEG or BCR/ABL.
ALL.df <- subset(ALL.df, labels == "NEG" | labels == "BCR/ABL")
ALL.df$labels <- factor(ALL.df$labels)

write.csv(ALL.df, bzfile("chiaretti-ALL.csv.bz2"), row.names = FALSE)