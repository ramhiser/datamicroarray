# The Sorlie et al. (2001) SRBCT data set
# Description on 'Consensus Clustering' Paper. Reference [37]
library('hybridHclust')
data('sorlie', package = 'hybridHclust')
data('sorlielabels', package = 'hybridHclust')

sorlie <- t(sorlie)
x <- unname(sorlie)
y <- factor(sorlielabels)

sorlie <- list(x = x, y = y)

