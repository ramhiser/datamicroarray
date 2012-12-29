# datamicroarray

The R package `datamicroarray` provides a collection of scripts to download, process, and load small-sample, high-dimensional microarray data sets. For each data set, we include a small set of scripts that automatically download, clean, and save the data set

## Data Sets

Each data set is listed below by the first author on the original paper. The data sets are organized them by category; note that most of the data sets are cancer-related. Click a data set to see its description, a link to the original paper, and additional information.

* Breast Cancer
  * [Chin (2006)](https://github.com/ramey/datamicroarray/wiki/Chin-%282006%29)
  * [Chowdary (2006)](https://github.com/ramey/datamicroarray/wiki/Chowdary-%282006%29)
  * [Gravier (2010)](https://github.com/ramey/datamicroarray/wiki/Gravier-%282010%29)
  * [Sorlie (2001)](https://github.com/ramey/datamicroarray/wiki/Sorlie-%282001%29)
  * [West (2001)](https://github.com/ramey/datamicroarray/wiki/West-%282001%29)
* Central Nervous System Disorders
  * [Pomeroy (2002)](https://github.com/ramey/datamicroarray/wiki/Pomeroy-%282002%29)
* Crohn's Disease
  * [Burczynski (2006)](https://github.com/ramey/datamicroarray/wiki/Burczynski-%282006%29)
* Colon Cancer
  * [Alon (1999)](https://github.com/ramey/datamicroarray/wiki/Alon-%281999%29)
* Huntington's Disease
  * [Borovecki (2005)](https://github.com/ramey/datamicroarray/wiki/Borovecki-%282005%29)
* Leukemia
  * [Chiaretti (2004)](https://github.com/ramey/datamicroarray/wiki/Chiaretti-%282004%29)
  * [Golub (1999)](https://github.com/ramey/datamicroarray/wiki/Golub-%281999%29)
  * [Yeoh (2002)](https://github.com/ramey/datamicroarray/wiki/Yeoh-%282002%29)
* Lung Cancer
  * [Gordon (2002)](https://github.com/ramey/datamicroarray/wiki/Gordon-%282002%29)
* Lymphoma
  * [Shipp (2002)](https://github.com/ramey/datamicroarray/wiki/Shipp-%282002%29)
* Myeloma
  * [Tian (2003)](https://github.com/ramey/datamicroarray/wiki/Tian-%282003%29)
* Prostate Cancer
  * [Singh (2002)](https://github.com/ramey/datamicroarray/wiki/Singh-%282002%29)
* Small Round Blue Cell Tumors
  * [Khan (2001)](https://github.com/ramey/datamicroarray/wiki/Khan-%282001%29)
* Miscellaneous
  * [Christensen (2009)](https://github.com/ramey/datamicroarray/wiki/Christensen-%282009%29)
  * [Su (2002)](https://github.com/ramey/datamicroarray/wiki/Su-%282002%29)
  * [Subramanian (2005)](https://github.com/ramey/datamicroarray/wiki/Subramanian-%282005%29)

## Installation

You can install the latest package version by typing the following at the R console:

```r
library(devtools)
install_github('datamicroarray', 'ramey')
```

Note that you need to install the `devtools` package beforehand.

Once you have installed and loaded the `datamicroarray` package, you can load a data set with the `data` command. For example, to load the well-known [Alon et al. (1999) Colon Cancer data set](https://github.com/ramey/datamicroarray/wiki/Alon-%281999%29), type the following at the R console:

```r
library(datamicroarray)
data('alon', package = 'datamicroarray')
```

After loading the data set, the resulting object is a named `list` with two elements:

1. `x` - the data matrix. The rows are the `n` observations, and the columns are the `p` features.
2. `y` - a factor vector of length `n` with the corresponding class labels.

Here is a summary for the [Alon et al. (1999) Colon Cancer data set](https://github.com/ramey/datamicroarray/wiki/Alon-%281999%29).

```r
> dim(alon$x)
[1]   62 2000
> table(alon$y)
 n  t 
22 40 
> 
```
