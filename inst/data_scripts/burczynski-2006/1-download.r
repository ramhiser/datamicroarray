# Burczynski et al. (2006) Chrohn's Disease Data Set
# Installs the data sets from Gene Expression Omnibus (GEO) database
source('http://bioconductor.org/biocLite.R')
biocLite('GEOquery')
library('GEOquery')
geo_obj <- getGEO('GDS1615')

