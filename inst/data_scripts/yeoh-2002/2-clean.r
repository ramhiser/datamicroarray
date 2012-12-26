# Leukemia Data Set from Yeoh et al. (2002)
# St. Jude Leukemia (K = 6) (http://www.stjuderesearch.org/site/data/ALL1/)
# Description on 'Consensus Clustering' Paper. Reference [37]
library('stjudem')
data('stjude', package = 'stjudem')
leukemia_subtypes <-  c("T", "E2A", "BCR", "TEL", "MLL", "Hyperdip")
leukemia_patients <- which(stjude$labels %in% leukemia_subtypes)
x <- t(stjude$expr[, leukemia_patients])
y <- factor(stjude$labels[leukemia_patients])
yeoh <- list(x = x, y = y)

