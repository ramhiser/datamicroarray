# Save a compressed version of the Tian et al. (2003) data set.
# The 'xz' compression format will compress the data more than the
# default 'gzip' format. However, the 'xz' takes slightly longer
# (~2 seconds longer) than 'gzip'.
save(tian, file = "tian.RData", compress = "xz")
