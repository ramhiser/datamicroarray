# Save a compressed version of the Su et al. (2002) data set.
# The 'xz' compression format will compress the data more than the
# default 'gzip' format. However, the 'xz' takes slightly longer
# (~2 seconds longer) than 'gzip'.
save(su, file = "su.RData", compress = "xz")
