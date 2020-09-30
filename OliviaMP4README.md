OliviaMP4
================

``` r
library(devtools)
```

    ## Loading required package: usethis

``` r
library(foofactors)
```

<!-- README.md is generated from README.Rmd. Please edit that file -->

**NOTE: This is a toy package created for expository purposes, for the
second edition of [R Packages](https://r-pkgs.org). It is not meant to
actually be useful. If you want a package for factor handling, please
see [forcats](https://forcats.tidyverse.org).**

# foofactors

<!-- badges: start -->

<!-- badges: end -->

Factors are a very useful type of variable in R, but they can also be
very aggravating. This package provides some helper functions for the
care and feeding of factors.

## Installation

You can install foofactors like so:

``` r
devtools::install_github("390-2020-09-Fall/foofactors")
```

Given two random integers

``` r
x <- sample(1:10, 1)
y <- sample(1:10,1)
c(x,y)
#> [1] 7 2
```

Using fmultiply() to get the product of those two random integers

``` r
fmultiply(x,y)
#> [1] 14
```
