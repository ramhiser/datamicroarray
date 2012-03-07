# Methylation Data Set from Christensen et al. (2009)
library('plyr')

temp <- read.table("additional_info.txt", header = TRUE, sep ="\t", stringsAsFactors = FALSE, comment.char = "")
temp <- temp[,c(1,8)]
names(temp) <- c("subject_id", "labels")

# Removes the extraneous " 1" from each subject's ID.
temp$subject_id <- apply(temp, 1, function(subject) {
	unlist(strsplit(subject[1], " "))[1]
})

# The paper considers the three groups: "blood", "placenta", and "other"
temp[which(temp$labels == "guthrie blood"),]$labels <- "blood"
temp[temp$labels != "blood" & temp$labels != "placenta",]$labels <- "other"

subjects_files <- dir("christensen")
christensen <- ldply(subjects_files, function(subject_file) {
	subject_id <- unlist(strsplit(subject_file, "_"))[1]
	subject_data <- read.table(paste("christensen/", subject_file, sep = ""), header = TRUE, sep = "\t", stringsAsFactors = FALSE)
	subject_df <- rbind.data.frame(subject_data[,2])
	subject_df <- cbind.data.frame(temp[which(temp[,1] == subject_id), 2], subject_df)
	names(subject_df) <- c("labels", subject_data[,1])
	subject_df
}, .progress = "text")
christensen <- list(
                    x = subset(christensen, select=-labels),
                    y = factor(christensen$labels)
                   )

# Removes the downloaded, compressed ZIP file along with the meta data.
file.remove("additional_info.txt")
file.remove("christensen.zip")

# Removes the folder 'christensen' that contained the decompressed data
unlink("christensen/", recursive = TRUE)


