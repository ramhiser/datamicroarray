# A number of cancer data sets are on Bioconductor (http://www.bioconductor.org)
# First, we install ALL of Bioconductor's R packages.
source('http://bioconductor.org/biocLite.R')
biocLite()

# Downloading the Alon Colon Cancer Data Set
biocLite('ALL')