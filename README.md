# datamicroarray

The R package `datamicroarray` provides a collection of scripts to download, process, and load small-sample, high-dimensional microarray data sets. For each data set, we include a small set of scripts that automatically download, clean, and save the data set

## Data Sets

Each data set is listed below by the first author on the original paper. The data sets are organized them by category; note that most of the data sets are cancer-related. Click a data set to see its description, a link to the original paper, and additional information.

* Breast Cancer
  * [Chin (2006)](https://github.com/ramey/datamicroarray/wiki/Chin-(2006))
  * [Chowdary (2006)](https://github.com/ramey/datamicroarray/wiki/Chowdary-(2006))
  * [Gravier (2010)](https://github.com/ramey/datamicroarray/wiki/Gravier-(2010))
  * [Sorlie (2001)](https://github.com/ramey/datamicroarray/wiki/Sorlie-(2001))
  * [West (2001)](https://github.com/ramey/datamicroarray/wiki/West-(2001))
* Central Nervous System Disorders
  * [Pomeroy (2002)](https://github.com/ramey/datamicroarray/wiki/Pomeroy-(2002))
* Crohn's Disease
  * [Burczynski (2006)](https://github.com/ramey/datamicroarray/wiki/Burczynski-(2006))
* Colon Cancer
  * [Alon (1999)](https://github.com/ramey/datamicroarray/wiki/Alon-(1999))
* Huntington's Disease
  * [Borovecki (2005)](https://github.com/ramey/datamicroarray/wiki/Borovecki-(2005))
* Leukemia
  * [Chiaretti (2004)](https://github.com/ramey/datamicroarray/wiki/Chiaretti-(2004))
  * [Golub (1999)](https://github.com/ramey/datamicroarray/wiki/Golub-(1999))
  * [Yeoh (2002)](https://github.com/ramey/datamicroarray/wiki/Yeoh-(2002))
* Lung Cancer
  * [Gordon (2002)](https://github.com/ramey/datamicroarray/wiki/Gordon-(2002))
* Lymphoma
  * [Shipp (2002)](https://github.com/ramey/datamicroarray/wiki/Shipp-(2002))
* Myeloma
  * [Tian (2003)](https://github.com/ramey/datamicroarray/wiki/Tian-(2003))
* Prostate Cancer
  * [Singh (2002)](https://github.com/ramey/datamicroarray/wiki/Singh-(2002))
* Small Round Blue Cell Tumors
  * [Khan (2001)](https://github.com/ramey/datamicroarray/wiki/Khan-(2001))
* Miscellaneous
  * [Christensen (2009)](https://github.com/ramey/datamicroarray/wiki/Christensen-(2009))
  * [Su (2002)](https://github.com/ramey/datamicroarray/wiki/Su-(2002))
  * [Subramanian (2005)](https://github.com/ramey/datamicroarray/wiki/Subramanian-(2005))

## Installation

You can install the latest package version by typing the following at the R console:

```r
library(devtools)
install_github('datamicroarray', 'ramey')
```

Note that you need to install the `devtools` package beforehand.

Once you have installed and loaded the `datamicroarray` package, you can load a data set with the `data` command. For example, to load the well-known [Alon et al. (1999) Colon Cancer data set](https://github.com/ramey/datamicroarray/wiki/Alon-(1999)), type the following at the R console:

```r
library(datamicroarray)
data('alon', package = 'datamicroarray')
```