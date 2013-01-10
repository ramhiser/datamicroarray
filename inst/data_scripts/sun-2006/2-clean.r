# Sun et al. (2006) Glioma Data Set
sun_x <- Table(geo_obj)
x <- unname(t(data.matrix(sun_x[, -c(1:2)])))

# The last columns of 'x' are entirely NA. We omit these columns.
x <- x[, seq_len(54613)]
colnames(x) <- sun_x[seq_len(54613)], 1]

y <- Columns(geo_obj)$disease.state

sun <- list(x = x, y = y)

