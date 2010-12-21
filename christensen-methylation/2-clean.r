# Methylation Data Set from Christensen et al. (2009)
library(plyr)
temp <- read.table("additional_info.txt", header = TRUE, sep ="\t", stringsAsFactors = FALSE)
temp <- temp[,c(1,4)]
names(temp) <- c("subject.id", "labels")

# Removes the extraneous " 1" from each subject's ID.
temp$subject.id <- apply(temp, 1, function(subject) {
	unlist(strsplit(subject[1], " "))[1]
})

# The paper considers the three groups: "blood", "placenta", and "other"
temp[which(temp$labels == "guthrie blood"),]$labels <- "blood"
temp[temp$labels != "blood" & temp$labels != "placenta",]$labels <- "other"

subjects.files <- dir("christensen")
christensen.df <- ldply(subjects.files, function(subject.file) {
	subject.id <- unlist(strsplit(subject.file, "_"))[1]
	subject.data <- read.table(paste("christensen/", subject.file, sep = ""), header = TRUE, sep = "\t", stringsAsFactors = FALSE)
	subject.df <- rbind.data.frame(subject.data[,2])
	subject.df <- cbind.data.frame(temp[which(temp[,1] == subject.id), 2], subject.df)
	names(subject.df) <- c("labels", subject.data[,1])
	subject.df
}, .progress = "text")
christensen.df$labels <- factor(christensen.df$labels)

write.csv(christensen.df, bzfile("christensen.csv.bz2"), row.names = FALSE)