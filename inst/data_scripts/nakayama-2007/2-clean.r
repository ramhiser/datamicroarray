# Nakayama et al. (2007) Sarcoma Data Set
nakayama_x <- Table(geo_obj)
x <- unname(t(data.matrix(nakayama_x[, -c(1:2)])))
colnames(x) <- nakayama_x[, 1]

y <- Columns(geo_obj)$disease.state

nakayama <- list(x = x, y = y)

