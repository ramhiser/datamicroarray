# This is referred to as the Christensen data set.
# The data has been published from the following paper:
# Christensen BC, Houseman EA, Marsit CJ, Zheng S, Wrensch MR, Wiemels JL, Nelson HH, Karagas MR, Padbury JF,
# Bueno R, Sugarbaker DJ, Yeh RF, Wiencke JK, Kelsey KT. (2009)
# Aging and environmental exposures alter tissue-specific DNA methylation dependent upon CpG island context.
# PLoS Genetics, 5, 8, 1 - 13.

download.file(url = "ftp://ftp.ebi.ac.uk/pub/databases/microarray/data/experiment/GEOD/E-GEOD-19434/E-GEOD-19434.processed.1.zip", destfile = "christensen.zip")
unzip("christensen.zip", exdir = "christensen")
download.file(url = "http://www.ebi.ac.uk/arrayexpress/files/E-GEOD-19434/E-GEOD-19434.sdrf.txt", destfile = "additional_info.txt")