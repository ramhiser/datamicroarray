# Tian et al. (2003) Myeloma Data Set
tian_x <- exprs(geo_obj[[1]])

x <- unname(t(tian_x))
colnames(x) <- rownames(tian_x)

y <- factor(as.vector(pData(geo_obj[[1]])$`description.2`))
tian <- list(x = x, y = y)

