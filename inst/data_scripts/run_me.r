# This script is intended to download, install, clean, and save a collection of
# microarray data sets. The data sets are saved in the .RData format and moved to
# the /data folder within the 'datamicroarray' package.

# First, we install the necessary Bioconductor packages.
source("http://bioconductor.org/biocLite.R")
biocLite(ask = FALSE)

# Now, we run the download, clean, and save scripts for each microarray data.
# For each data set, we generate an appropriately named RData file that we
# move to the /data subfolder of the 'datamicroarray' package.

# Alon (1999)
setwd("alon-1999")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("alon.RData", "../../../data/alon.RData")

# Borovecki (2005)
setwd("borovecki-2005")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("borovecki.RData", "../../../data/borovecki.RData")

# Burczynski (2006)
setwd("../burczynski-2006")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("burczynski.RData", "../../../data/burczynski.RData")

# Chiaretti (2004)
setwd("../chiaretti-2004")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("chiaretti.RData", "../../../data/chiaretti.RData")

# Chin (2006)
setwd("../chin-2006")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("chin.RData", "../../../data/chin.RData")

# Chowdary (2006)
setwd("../chowdary-2006")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("chowdary.RData", "../../../data/chowdary.RData")

# Christensen (2009)
setwd("../christensen-2009")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("christensen.RData", "../../../data/christensen.RData")

# Golub (1999)
setwd("../golub-1999")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("golub.RData", "../../../data/golub.RData")

# Gordon (2002)
setwd("../gordon-2002")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("gordon.RData", "../../../data/gordon.RData")

# Gravier (2010)
setwd("../gravier-2010")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("gravier.RData", "../../../data/gravier.RData")

# Khan (2001)
setwd("../khan-2001")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("khan.RData", "../../../data/khan.RData")

# Pomeroy (2002)
setwd("../pomeroy-2002")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("pomeroy.RData", "../../../data/pomeroy.RData")

# Shipp (2002)
setwd("../shipp-2002")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("shipp.RData", "../../../data/shipp.RData")

# Singh (2002)
setwd("../singh-2002")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("singh.RData", "../../../data/singh.RData")

# Sorlie (2001)
setwd("../sorlie-2001")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("sorlie.RData", "../../../data/sorlie.RData")

# Su (2002)
setwd("../su-2002")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("su.RData", "../../../data/su.RData")

# Subramanian (2005)
setwd("../subramanian-2005")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("subramanian.RData", "../../../data/subramanian.RData")

# West (2001)
setwd("../west-2001")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("west.RData", "../../../data/west.RData")

# Yeoh (2002)
setwd("../yeoh-2002")
source("1-download.r")
source("2-clean.r")
source("3-save.r")
file.rename("yeoh.RData", "../../../data/yeoh.RData")
