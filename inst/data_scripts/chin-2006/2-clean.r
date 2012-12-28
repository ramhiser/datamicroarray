# Chin et al. (2006) Breast Cancer Data Set
exprs_file <- paste(temp_dir, ae_obj$procfile, sep = "/")
sdrf_file <- paste(temp_dir, ae_obj$sdrf, sep = "/")

chin_x <- read.table(exprs_file, header = FALSE, sep = "\t",
                     stringsAsFactors = FALSE)
subject_id <- as.character(chin_x[1, -1])
x <- unname(t(chin_x[-(1:2), -1]))

sdrf <- read.table(sdrf_file, header = TRUE, sep = "\t",
                   stringsAsFactors = TRUE, comment.char = "")
sdrf <- sdrf[sdrf[, 78] == "breastTumorExpression.txt", ]
sdrf <- sdrf[, c(35, 74)]
colnames(sdrf) <- c("class_label", "subject_id")

sdrf$subject_id <- as.character(sdrf$subject_id)

# We reorder the expressions and the class labels so that the subject ID's match
sdrf <- sdrf[order(sdrf$subject_id), ]
x <- x[order(subject_id), ]
y <- sdrf$class_label

chin <- list(x = x, y = y)

# Removes the 'temp' folder that contained the decompressed data
unlink("temp/", recursive = TRUE)
