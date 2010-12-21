# Diffuse Large B-cell Lymphoma (DLBCL) Data Set from Shipp et al. (2002)
temp <- read.csv("DLBCLTumor.data", header = FALSE)
DLBCL.df <- data.frame(labels = temp[,ncol(temp)], temp[,-ncol(temp)])

write.csv(DLBCL.df, bzfile("DLBCL.csv.bz2"), row.names = FALSE)