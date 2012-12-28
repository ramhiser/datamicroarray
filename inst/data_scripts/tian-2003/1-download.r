# Tian et al. (2003) Myeloma Data Set
# Installs the data sets from Gene Expression Omnibus (GEO) database
source('http://bioconductor.org/biocLite.R')
biocLite('GEOquery')
library('GEOquery')
geo_obj <- getGEO('GSE755')

