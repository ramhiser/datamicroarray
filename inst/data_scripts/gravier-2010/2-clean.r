library('plyr')

# Breast Cancer Data Set from Gravier et al. (2010)
temp <- read.table("additional_info.txt", header = TRUE, sep = "\t",
                   stringsAsFactors = FALSE, comment.char = "", check.names = FALSE)
temp <- subset(temp, select = c("Source Name", "Characteristics [group]"))
colnames(temp) <- c("subject_id", "labels")

# From the paper's abstract:

# The authors used Comparative Genomic Hybridization (CGH) array to analyze 168
# pT1T2pN0 invasive ductal carcinoma patients with either good (no event 5 years
# after diagnosis: 111 patients) or poor (57 patients with early onset
# metastasis) outcome.
#
# There are 168 observations without labels. We first remove these.
# Afterwards, there are 111 observations marked A (for good) and 57 observations
# marked B (for poor). We update the label names accordingly.
temp <- temp[!grepl("^[[:space:]]+$", temp$labels), ]
temp$labels <- ifelse(temp$labels == "A", "good", "poor")

# NOTE: The observations that were kept (i.e., labeled A or B) had a " 1"
# appended to the *subject_id*, while the the remaining subjects were appended
# with " 2". We remove the appended space and number from each subject's ID to
# match with the individual subject files.
temp$subject_id <- sapply(strsplit(temp$subject_id, " "), head, n = 1)

# Extracts the features for each subject
subjects_files <- dir("gravier")
gravier <- ldply(subjects_files, function(subject_file) {
  subject_id <- unlist(strsplit(subject_file, "_"))[1]
  subject_data <- read.table(paste0("gravier/", subject_file), header = TRUE,
                             sep = "\t", stringsAsFactors = FALSE)
  subject_df <- rbind.data.frame(subject_data[, 2])
  subject_df <- cbind.data.frame(temp[which(temp[, 1] == subject_id), 2], subject_df)
  names(subject_df) <- c("labels", subject_data[, 1])
  subject_df
}, .progress = "text")

gravier <- list(
    x = subset(gravier, select = -labels),
    y = factor(gravier$labels)
)

# Removes the downloaded, compressed ZIP file along with the meta data.
file.remove("additional_info.txt")
file.remove("gravier.zip")

# Removes the folder 'gravier' that contained the decompressed data
unlink("gravier/", recursive = TRUE)

