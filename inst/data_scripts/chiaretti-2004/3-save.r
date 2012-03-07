# Save a compressed version of the Chiarett et al. (2004) data set.
# The 'xz' compression format will compress the data more than the
# default 'gzip' format. However, the 'xz' takes slightly longer
# (~2 seconds longer) than 'gzip'.
save(chiaretti, file = "chiaretti.RData", compress = "xz")
