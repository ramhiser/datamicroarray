# Subramanian (2005) P53 gene expression data set
library('GANPAdata')
data('gExprs.p53', package = 'GANPAdata')

x <- unname(t(gExprs.p53$gExprs))
colnames(x) <- rownames(gExprs.p53$gExprs)

# 17 P53-wildtype (WT) and 33 P53-mutated (MUT) cancer cell lines.
y <- factor(as.vector(gExprs.p53$sampleinfo[, 2]))

subramanian <- list(x = x, y = y)
