# Prostate Cancer Data Set from Singh et al. (2002)
temp <- read.csv("prostate/prostate_TumorVSNormal_train.data", header = FALSE)
prostate.df <- data.frame(labels = temp[,ncol(temp)], temp[,-ncol(temp)])

singh <- list(
              x = temp[,-ncol(temp)],
              y = temp[,ncol(temp)]
             )

# Removes downloaded files
unlink("singh.zip")
unlink("prostate/", recursive = TRUE)
unlink("prostate*")

