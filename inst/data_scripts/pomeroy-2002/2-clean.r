library('stepwiseCM')
data('CNS', package = 'stepwiseCM')

x <- unname(t(CNS$mrna))
colnames(x) <- as.character(CNS$gene.name$Name)

# The category is the patient survival within 24 months after treatment.
# 21 patients died (labeled 0)
# 39 patients survived (labeled 1)
y <- factor(CNS$class, levels = c(0, 1), labels = c("died", "survived"))

pomeroy <- list(x = x, y = y)

