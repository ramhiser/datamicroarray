# Save a compressed version of the Christensen et al. (2009) data set.
# The 'xz' compression format will compress the data more than the
# default 'gzip' format. However, the 'xz' takes slightly longer
# (~2 seconds longer) than 'gzip'.
save(christensen, file = "christensen.RData", compress = "xz")
