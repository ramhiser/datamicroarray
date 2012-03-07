# Save a compressed version of the Gravier et al. (2010) data set.
# The 'xz' compression format will compress the data more than the
# default 'gzip' format. However, the 'xz' takes slightly longer
# (~2 seconds longer) than 'gzip'.
save(gravier, file = "gravier.RData", compress = "xz")
