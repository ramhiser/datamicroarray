# Prostate Cancer Data Set from Singh et al. (2002)
temp <- read.csv("prostate/prostate_TumorVSNormal_train.data", header = FALSE)
prostate.df <- data.frame(labels = temp[,ncol(temp)], temp[,-ncol(temp)])

write.csv(prostate.df, bzfile("prostate.csv.bz2"), row.names = FALSE)