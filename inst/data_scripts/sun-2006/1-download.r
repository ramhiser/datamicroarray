# Sun et al. (2006) Glioma Data Set
# Installs the data sets from Gene Expression Omnibus (GEO) database
source('http://bioconductor.org/biocLite.R')
biocLite('GEOquery')
library('GEOquery')
geo_obj <- getGEO('GDS1962')

