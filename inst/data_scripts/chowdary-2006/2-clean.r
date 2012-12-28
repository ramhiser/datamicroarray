# Chowdary et al. (2006) Breast Cancer Data Set
chowdary_x <- exprs(geo_obj[[1]])
x <- unname(t(chowdary_x))
colnames(x) <- rownames(chowdary_x)

y <- factor(as.vector(pData(geo_obj[[1]])$source_name_ch1))

chowdary <- list(x = x, y = y)

