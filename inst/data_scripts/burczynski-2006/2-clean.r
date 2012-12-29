# Burczynski et al. (2006) Crohn's Disease Data Set
burczynski_x <- Table(geo_obj)
x <- unname(t(data.matrix(burczynski_x[, -c(1:2)])))
colnames(x) <- burczynski_x[, 1]

y <- Columns(geo_obj)$disease.state

burczynski <- list(x = x, y = y)

