# Save a compressed version of the Burczynski et al. (2006) data set.
# The 'xz' compression format will compress the data more than the
# default 'gzip' format. However, the 'xz' takes slightly longer
# (~2 seconds longer) than 'gzip'.
save(burczynski, file = "burczynski.RData", compress = "xz")
