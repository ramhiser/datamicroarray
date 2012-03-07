# This is referred to as the Gravier data set.
# The data has been published from the following paper:
# Gravier E, Pierron G, Vincent-Salomon A, Gruel N et al. (2010).
# A prognostic DNA signature for T1T2 node-negative breast cancer patients.
# Genes Chromosomes Cancer, 49, 12, 1125-34.

# A link to the paper is given here: http://www.ncbi.nlm.nih.gov/projects/geo/query/acc.cgi?acc=GSE19159
# Transformation Applied: Normalized log2 ratio

download.file(url = "ftp://ftp.ebi.ac.uk/pub/databases/microarray/data/experiment/GEOD/E-GEOD-19159/E-GEOD-19159.processed.1.zip", destfile = "gravier.zip")
unzip("gravier.zip", exdir = "gravier")
download.file(url = "http://www.ebi.ac.uk/arrayexpress/files/E-GEOD-19159/E-GEOD-19159.sdrf.txt", destfile = "additional_info.txt")