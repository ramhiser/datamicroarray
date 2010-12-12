# This is referred to as the DLBCL data set.
# The data has been published from the following paper:
# Margaret A. Shipp, et al. "Diffuse Large B-cell Lymphoma Outcome Prediction by Gene-expression Profiling and Supervised Machine Learning".
# Nature Medicine, 8(1):68-74, January 2002

# I found the data at:
# http://datam.i2r.a-star.edu.sg/datasets/krbd/DLBCL/DLBCL-Harvard.html

# Here is the information from the website:
# There are two kinds of classifications about diffuse large b-cell lymphoma (DLBCL) addressed in the publication.
# First one is DLBCL versus Follicular Lymphoma (FL) morphology. This set of data contains 58 DLBCL samples and 19 FL samples.
# The second problem is to predict the patient outcome of DLBCL. Among 58 DLBCL patient samples, 32 of them are from cured
# patients (labelled as 'cured')while 26 of them are from patients with fatal or refractory disease (labelled as 'fatal').
# The expression profile contains 6817 genes.

download.file(url = "http://datam.i2r.a-star.edu.sg/datasets/krbd/DLBCL/DLBCL-Harvard.zip", destfile = "DLBCL.zip")
unzip("DLBCL.zip")