rm(list = ls())

# Alon (1999)
alon <- read.csv("alon-colon/colon-cancer.csv")
alon <- list(x = alon[,-1], y = alon[,1])

# Chiaretti (1999)
chiaretti <- read.csv(bzfile("chiaretti-ALL/chiaretti-ALL.csv.bz2", "r"))
chiaretti <- list(x = chiaretti[,-1], y = chiaretti[,1])

# Christensen (2009)
christensen <- read.csv(bzfile("christensen-methylation/christensen.csv.bz2", "r"))
christensen <- list(x = christensen[,-1], y = christensen[,1])

# Golub (1999)
golub_train <- read.csv("golub-leukemia/golub-train.csv")
golub_test <- read.csv("golub-leukemia/golub-test.csv")
golub_train <- list(x = golub_train[,-1], y = golub_train[,1])
golub_test <- list(x = golub_test[,-1], y = golub_test[,1])

# Gravier (2010)
gravier <- read.csv(bzfile("gravier-breast/gravier.csv.bz2", "r"))
gravier <- list(x = gravier[,-1], y = gravier[,1])

# Khan
khan <- read.csv("khan/khan.csv")
khan <- list(x = khan[,-1], y = khan[,1])

# Shipp (2002)
shipp <- read.csv(bzfile("shipp-DLBCL/DLBCL.csv.bz2", "r"))
shipp <- list(x = shipp[,-1], y = shipp[,1])

# Singh (2002)
singh <- read.csv(bzfile("singh-prostate/prostate.csv.bz2", "r"))
singh <- list(x = singh[,-1], y = singh[,1])

package.skeleton("datamicroarray")
