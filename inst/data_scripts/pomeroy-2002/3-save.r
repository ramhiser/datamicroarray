# Save a compressed version of the Pomeroy et al. (2002) data set.
# The 'xz' compression format will compress the data more than the
# default 'gzip' format. However, the 'xz' takes slightly longer
# (~2 seconds longer) than 'gzip'.
save(pomeroy, file = "pomeroy.RData", compress = "xz")
