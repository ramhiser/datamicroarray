# A number of cancer data sets are on Bioconductor (http://www.bioconductor.org)
# First, we install ALL of Bioconductor's R packages.
source('http://bioconductor.org/biocLite.R')
biocLite()

# Downloading the Chiaretti Acute Lymphoblastic Leukemia (ALL) Data Set
biocLite('ALL')