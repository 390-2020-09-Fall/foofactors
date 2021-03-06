
<!-- README.md is generated from README.Rmd. Please edit that file -->

**NOTE: This is a toy package created for expository purposes, for the
second edition of [R Packages](https://r-pkgs.org). It is not meant to
actually be useful. If you want a package for factor handling, please
see [forcats](https://forcats.tidyverse.org).**

# foofactors

<!-- badges: start -->

<!-- badges: end -->

This package provides some helper functions for addinh up two numbers.

## Installation

You can install foofactors like so:

``` r
devtools::install_github("390-2020-09-Fall/foofactors")
```

## Quick demo

Binding two factors via `fbind()`:

``` r
library(foofactors)
```

The `fAdd()` function sums up the two numbers together.

``` r
fAdd(3.5, 4)
#> [1] 7.5
```

``` r
fAdd(10000000, 20000000)
#> [1] 3e+07
```
