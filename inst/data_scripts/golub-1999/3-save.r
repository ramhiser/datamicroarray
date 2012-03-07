# Save a compressed version of the Golub et al. (1999) data set.
# The 'xz' compression format will compress the data more than the
# default 'gzip' format. However, the 'xz' takes slightly longer
# (~2 seconds longer) than 'gzip'.
save(golub, golub_train, golub_test, file = "golub.RData", compress = "xz")