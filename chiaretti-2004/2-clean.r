# Acute Lymphoblastic Leukemia (ALL) Data Set from Chiaretti et al. (2004)
library('ALL')
data('ALL')

x <- t(exprs(ALL))
y <- as.vector(ALL$mol.biol)

# Some authors only consider the B-cell ALL tumors.
# An example is given here:
# http://www.bioconductor.org/help/course-materials/2011/intl-workshop-bioc/presentation-slides/Introduction-Lab.pdf
# If we wish to do the same, set b_cells to TRUE.
b_cells <- FALSE
if(b_cells) {
  b_cell <- grep("^B", as.character(ALL$BT))
  x <- x[b_cell,]
  y <- y[b_cell]
}

# Additionally, some authors, such as Ramey and Young (2012)
# and Xu, Brock, and Parrish (2009) only consider
# the samples with biology classification NEG or BCR/ABL. The Xu et al. paper is entitled
# "Modified linear discriminant analysis approaches for classification of high-dimensional microarray data"
# published in Computational Statistics and Data Analysis.
# Set two_classes to TRUE if we want to do the same.
two_classes <- FALSE

if(two_classes) {
  classes <- c("NEG", "BCR/ABL")
  idx <- which(y %in% two_classes)
  x <- x[idx, ]
  y <- y[idx]
}

chiaretti <- list(x = x, y = factor(y))