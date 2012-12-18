library('mboost')
data('Westbc', package = 'mboost')

x <- unname(t(Westbc$assay))
y <- Westbc$pheno[, 1]

west <- list(x = x, y = y)
