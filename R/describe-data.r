#' Brief description of all microarray data sets in the 'datamicroarray' package.
#'
#' For all data sets in the \code{datamicroarray} package, we summarize them in a
#' \code{data.frame}.
#'
#' @export
#' @return data.frame describing each data set in the package. The columns of the
#' data frame are:
#' \describe{
#'   \item{author}{The first author's name}
#'   \item{year}{The year that the data set's article was published}
#'   \item{n}{The sample size}
#'   \item{p}{The number of features}
#'   \item{K}{The number of classes}
#'   \item{Disease}{The disease studied, if applicable}
#' }
describe_data <- function() {
  data_summary <- rbind.data.frame(
    c("alon", 1999, 62, 2000, 2, "Colon Cancer"),
    c("borovecki", 2005, 31, 22283, 2, "Huntington's Disease"),
    c("burczynski", 2006, 127, 22283, 3, "Crohn's Disease"),
    c("chiaretti", 2004, 111, 12625, 2, "Leukemia"),
    c("chin", 2006, 118, 22215, 2, "Breast Cancer"),
    c("chowdary", 2006, 104, 22283, 2, "Breast Cancer"),
    c("christensen", 2009, 217, 1413, 3, "N/A"),
    c("golub", 1999, 72, 7129, 3, "Leukemia"),
    c("gordon", 2002, 181, 12533, 2, "Lung Cancer"),
    c("gravier", 2010, 168, 2905, 2, "Breast Cancer"),
    c("khan", 2001, 63, 2308, 4, "SRBCT"),
    c("pomeroy", 2002, 60, 7128, 2, "CNS Tumor"),
    c("shipp", 2002, 58, 6817, 2, "Lymphoma"),
    c("singh", 2002, 102, 12600, 2, "Prostate Cancer"),
    c("sorlie", 2001, 85, 456, 5, "Breast Cancer"),
    c("su", 2002, 102, 5565, 4, "N/A"),
    c("subramanian", 2005, 50, 10100, 2, "N/A"),
    c("tian", 2003, 173, 12625, 2, "Myeloma"),
    c("west", 2001, 49, 7129, 2, "Breast Cancer"),
    c("yeoh", 2002, 248, 12625, 6, "Leukemia")
  )
  colnames(data_summary) <- c('author', 'year', 'n', 'p', 'K', 'Disease')
  data_summary$n <- as.integer(as.character(data_summary$n))
  data_summary$p <- as.integer(as.character(data_summary$p))
  data_summary$K <- as.integer(as.character(data_summary$K))  

  data_summary
}



