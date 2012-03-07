# This is referred to as the prostate data set.
# The data has been published from the following paper:
# Dinesh Singh, et al. "Gene Expression Correlates of Clinical Prostate Cancer Behavior". Cancer Cell, 1:203-209, March, 2002.

# I found the data at:
# http://datam.i2r.a-star.edu.sg/datasets/krbd/ProstateCancer/ProstateCancer.html

# Raw Data:
# (1) http://www-genome.wi.mit.edu/mpr/prostate
# (2) http://carrier.gnf.org/welsh/prostate/

# Here is the information from the website:
# (A) Tumor versus Normal classification: training set (from (1)) contains 52 prostate tumor samples and
# 50 non-tumor (labelled as "Normal") prostate samples with around 12600 genes. An independent set
# of testing samplesfrom (2) is also prepared, which is from a different experiment and has a nearly 10-fold difference
# in overall microarray intensity from the training data. Besides, we have removed extra genes contained in the testing samples.
# In the above publication, the testing set is indicated to have 27 tumor and 8 normal samples.
# However, from our extraction, there are 25 tumor and 9 normal samples.
# (B) Prediction of clinical outcome: in this data set, 21 patients were evaluable with respect to recurrence following surgery
# with 8 patients having relapsed and 13 patients having remained relapse free ("non-relapse") for at least 4 years.

download.file(url = "http://datam.i2r.a-star.edu.sg/datasets/krbd/ProstateCancer/ProstateCancer.zip", destfile = "singh.zip")
unzip("singh.zip")
