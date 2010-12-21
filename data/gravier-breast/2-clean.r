# Breast Cancer Data Set from Gravier et al. (2010)
library(plyr)
temp <- read.table("additional_info.txt", header = TRUE, sep ="\t", stringsAsFactors = FALSE)
temp <- temp[,c(1,5)]
names(temp) <- c("subject.id", "labels")
temp <- temp[which(temp$labels != ""), ]

# Removes the extraneous " 1" from each subject's ID.
temp$subject.id <- apply(temp, 1, function(subject) {
	unlist(strsplit(subject[1], " "))[1]
})

# From the paper's abstract:
# The authors used Comparative Genomic Hybridization (CGH) array to analyze 168 pT1T2pN0 invasive ductal carcinoma patients
# with either good (no event 5 years after diagnosis: 111 patients) or poor (57 patients with early onset metastasis) outcome.
#
# NOTE: There are only 106 patients marked with "No Event" and there are 62 that had an event. We are off by 5.
temp[,2] <- ifelse(temp[,2] == "No event", "good", "poor")

subjects.files <- dir("gravier")
gravier.df <- ldply(subjects.files, function(subject.file) {
	subject.id <- unlist(strsplit(subject.file, "_"))[1]
	subject.data <- read.table(paste("gravier/", subject.file, sep = ""), header = TRUE, sep = "\t", stringsAsFactors = FALSE)
	subject.df <- rbind.data.frame(subject.data[,2])
	subject.df <- cbind.data.frame(temp[which(temp[,1] == subject.id), 2], subject.df)
	names(subject.df) <- c("labels", subject.data[,1])
	subject.df
}, .progress = "text")
gravier.df$labels <- factor(gravier.df$labels)

write.csv(gravier.df, bzfile("gravier.csv.bz2"), row.names = FALSE)



