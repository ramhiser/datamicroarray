# The Su et al. (2002) Novartis multi-tissue data set
# See the Consensus Clustering paper from Monti et al. (2003)
library('fabiaData')
data("Multi_A", package = "fabiaData")

x <- unname(t(XMulti))
y <- factor(CMulti)

su <- list(x = x, y = y)

