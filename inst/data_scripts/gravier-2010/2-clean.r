# I'm using a 'trim' function that removes trailing and leading white space from a string.
# The code is from:
# http://stackoverflow.com/questions/2261079/whitespace-in-r

# Breast Cancer Data Set from Gravier et al. (2010)
library('plyr')
temp <- read.table("additional_info.txt", header = TRUE, sep ="\t", stringsAsFactors = FALSE, comment.char = "")
temp <- temp[,c(1,5)]
names(temp) <- c("subject_id", "labels")
temp <- temp[which(trim(temp$labels) != ""), ]

# Removes the extraneous " 1" from each subject's ID.
temp$subject_id <- apply(temp, 1, function(subject) {
	unlist(strsplit(subject[1], " "))[1]
})

# From the paper's abstract:
# The authors used Comparative Genomic Hybridization (CGH) array to analyze 168 pT1T2pN0 invasive ductal carcinoma patients
# with either good (no event 5 years after diagnosis: 111 patients) or poor (57 patients with early onset metastasis) outcome.
#
# NOTE: There are only 106 patients marked with "No Event" and there are 62 that had an event. We are off by 5.
temp[,2] <- ifelse(temp[,2] == "No event", "good", "poor")

subjects_files <- dir("gravier")
gravier <- ldply(subjects_files, function(subject_file) {
	subject_id <- unlist(strsplit(subject_file, "_"))[1]
	subject_data <- read.table(paste("gravier/", subject_file, sep = ""), header = TRUE, sep = "\t", stringsAsFactors = FALSE)
	subject_df <- rbind.data.frame(subject_data[,2])
	subject_df <- cbind.data.frame(temp[which(temp[,1] == subject_id), 2], subject_df)
	names(subject_df) <- c("labels", subject_data[,1])
	subject_df
}, .progress = "text")

gravier <- list(
                x = subset(gravier, select=-labels),
                y = factor(gravier$labels)
               )

# Removes the downloaded, compressed ZIP file along with the meta data.
file.remove("additional_info.txt")
file.remove("gravier.zip")

# Removes the folder 'christensen' that contained the decompressed data
unlink("gravier/", recursive = TRUE)

