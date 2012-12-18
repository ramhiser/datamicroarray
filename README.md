# datamicroarray

The R package `datamicroarray` provides a collection of scripts to download, process, and load high-dimensional microarray data sets. Each data set is listed by the first author on the original paper. The data sets are organized them below by category; note that most of the data sets are cancer-related. Click a data set to see its description, a link to the original paper, and additional information.

* Breast Cancer
  * [Gravier et al. (2010)](https://github.com/ramey/datamicroarray/wiki/Gravier-2010)
  * [van't Veer et al. (2002)](https://github.com/ramey/datamicroarray/wiki/vantVeer-2002)
  * [West et al. (2001)](https://github.com/ramey/datamicroarray/wiki/West-2001)
* Colon Cancer
  * [Alon et al. (1999)](https://github.com/ramey/datamicroarray/wiki/Alon-2001)
* Leukemia
  * [Chiaretti et al. (2004)](https://github.com/ramey/datamicroarray/wiki/Chiaretti-2004)
  * [Golub et al. (1999)](https://github.com/ramey/datamicroarray/wiki/Golub-1999)
  * [Yeoh et al. (2002) - St. Jude](https://github.com/ramey/datamicroarray/wiki/Yeoh-2002)
* Lung Cancer
  * [Bhattacharjee et al. (2001)](https://github.com/ramey/datamicroarray/wiki/Bhattacharjee-2001)
  * [Gordon et al. (2002)](https://github.com/ramey/datamicroarray/wiki/Gordon-2002)
* Lymphoma
  * [Shipp et al. (2002)](https://github.com/ramey/datamicroarray/wiki/Shipp-2002)
* Prostate Cancer
  * [Singh et al. (2002)](https://github.com/ramey/datamicroarray/wiki/Singh-2002)
* Miscellaneous
  * [Khan et al. (2001) - SRBCT](https://github.com/ramey/datamicroarray/wiki/Khan-2001)
  * [Oberthuer et al. (2006) - Neuroblastoma](https://github.com/ramey/datamicroarray/wiki/Oberthuer-2006)
  * [Pomeroy et al. (2002) - CNS](https://github.com/ramey/datamicroarray/wiki/Pomeroy-2002)
  * [P53]()

## Installation

You can install the latest package version by typing the following at the `R` console:

```r
library(devtools)
install_github('datamicroarray', 'ramey')
```

## Miscellaneous

This project is a collection of scripts to download, process, and load microarray data sets. Most of them are small sample, high-dimensional data sets (i.e. the small n, large p problem). Additionally, most of the data sets presented here have been widely studied in the genetics/microarray, bioinformatics, statistics, and computer science literatures.

For each data set, I have included a small set of scripts in the main project folder that automatically download, clean, and save the data set if necessary. The filename scheme of the scripts each begin with numbers that indicate the order in which the files should be sourced.
