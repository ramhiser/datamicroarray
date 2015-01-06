# datamicroarray

The R package `datamicroarray` provides a collection of scripts to download, process, and load small-sample, high-dimensional microarray data sets to assess machine learning algorithms and models. For each data set, we include a small set of scripts that automatically download, clean, and save the data set.

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
* Glioma
  * [Sun (2006)](https://github.com/ramey/datamicroarray/wiki/Sun-%282006%29)
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
* Sarcoma
  * [Nakayama (2007)](https://github.com/ramey/datamicroarray/wiki/Nakayama-%282007%29)
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
install_github('ramhiser/datamicroarray')
```

Note that you need to install the `devtools` package beforehand.

## Usage

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
```

You can see all of the data sets available along with a brief summary of each with the `describe_data` helper function. Here it is in action:

```r
> describe_data()
        author year   n     p K              Disease
1         alon 1999  62  2000 2         Colon Cancer
2    borovecki 2005  31 22283 2 Huntington's Disease
3   burczynski 2006 127 22283 3      Crohn's Disease
4    chiaretti 2004 111 12625 2             Leukemia
5         chin 2006 118 22215 2        Breast Cancer
6     chowdary 2006 104 22283 2        Breast Cancer
7  christensen 2009 217  1413 3                  N/A
8        golub 1999  72  7129 3             Leukemia
9       gordon 2002 181 12533 2          Lung Cancer
10     gravier 2010 168  2905 2        Breast Cancer
11        khan 2001  63  2308 4                SRBCT
12     pomeroy 2002  60  7128 2            CNS Tumor
13       shipp 2002  58  6817 2             Lymphoma
14       singh 2002 102 12600 2      Prostate Cancer
15      sorlie 2001  85   456 5        Breast Cancer
16          su 2002 102  5565 4                  N/A
17 subramanian 2005  50 10100 2                  N/A
18        tian 2003 173 12625 2              Myeloma
19        west 2001  49  7129 2        Breast Cancer
20        yeoh 2002 248 12625 6             Leukemia
```
