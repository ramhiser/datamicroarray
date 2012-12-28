# Chin et al. (2006) Breast Cancer Data Set
# Installs the data sets from ArrayExpress (AE) database
source('http://bioconductor.org/biocLite.R')
biocLite('ArrayExpress')
library('ArrayExpress')

temp_dir <- paste(getwd(), "temp", sep = "/")
dir.create(temp_dir)
ae_obj <- getAE('E-TABM-158', type = 'processed', path = temp_dir)


