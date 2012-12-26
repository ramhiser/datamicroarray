# Borovecki (2005) Huntington's disease data set

# We ignore the lines beginning with !
borovecki <- read.table(gzfile("borovecki.txt.gz"), comment.char = "!",
                        stringsAsFactors = FALSE)

x <- t(unname(data.matrix(borovecki[-1, -1])))
colnames(x) <- borovecki[-1, 1]

# Affymetrix U133A expression levels for 12 symptomatic and 5 presymptomatic
# Huntington's disease patients versus 14 healthy controls.
# We pool the symptomatic and presymptomatic samples into a single class.
y <- factor(c(rep("symptomatic", 17), rep("control", 14)))

borovecki <- list(x = x, y = y)

file.remove("borovecki.txt.gz")
