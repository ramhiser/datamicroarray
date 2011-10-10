# Save a compressed version of the Khan et al. (2001) data set.
# The 'xz' compression format will compress the data more than the
# default 'gzip' format. However, the 'xz' takes slightly longer
# (~2 seconds longer) than 'gzip'.
save(khan, file = "chiaretti.RData", compress = "xz")