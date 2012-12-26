# Lung Cancer Data Set from Gordon et al. (2002)
gordon <- read.delim(file = "gordon.txt", stringsAsFactors = FALSE)

# Construct 'x' from 'gordon' directly
# The columns of 'x' are given in the 'ProbeSet'
x <- unname(t(gordon[, -1]))
colnames(x) <- gordon[, 1]

# The colnames of gordon indicate the class
# 1. meso for the 31 mesothelioma samples
# 2. CL for 150 adenocarcinoma
# The first item contains the 'Probe Set', which are the feature names.
# We ignore the 'Probe Set' when determining the classes.
sample_info <- colnames(gordon)[-1]
y <- ifelse(grepl('^meso', sample_info), 'mesothelioma', 'adenocarcinoma')
y <- factor(y)

gordon <- list(x = x, y = y)

# Removes the downloaded file
file.remove("gordon.txt")



