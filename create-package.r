rm(list = ls())

# Alon (1999)
alon <- read.csv("alon-colon/colon-cancer.csv")

# Chiaretti (1999)
chiaretti <- read.csv(bzfile("chiaretti-ALL/chiaretti-ALL.csv.bz2", "r"))

# Christensen (2009)
christensen <- read.csv(bzfile("christensen-methylation/christensen.csv.bz2", "r"))

# Golub (1999)
golub.train <- read.csv("golub-leukemia/golub-train.csv")
golub.test <- read.csv("golub-leukemia/golub-test.csv")

# Gravier (2010)
gravier <- read.csv(bzfile("gravier-breast/gravier.csv.bz2", "r"))

# Shipp (2002)
shipp <- read.csv(bzfile("shipp-DLBCL/DLBCL.csv.bz2", "r"))

# Singh (2002)
singh <- read.csv(bzfile("singh-prostate/prostate.csv.bz2", "r"))

# Tibshirani-Khan
khan <- read.csv("tibshirani-khan/tibshirani-khan.csv")

package.skeleton("datamicroarray")