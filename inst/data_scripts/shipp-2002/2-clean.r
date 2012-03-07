# Diffuse Large B-cell Lymphoma (DLBCL) Data Set from Shipp et al. (2002)
temp <- read.csv("DLBCLTumor.data", header = FALSE)

shipp <- list(
              x = temp[,-ncol(temp)],
              y = temp[,ncol(temp)]
             )

# Removes downloaded files
unlink("shipp.zip")
unlink("DLBCL*")
