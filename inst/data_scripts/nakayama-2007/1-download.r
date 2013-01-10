# Nakayama et al. (2007) Sarcoma Data Set
# Installs the data sets from Gene Expression Omnibus (GEO) database
source('http://bioconductor.org/biocLite.R')
biocLite('GEOquery')
library('GEOquery')
geo_obj <- getGEO('GDS2736')

