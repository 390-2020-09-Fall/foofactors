
<!-- README.md is generated from README.Rmd. Please edit that file -->
**NOTE: This is a toy package created for expository purposes, for the second edition of [R Packages](https://r-pkgs.org). It is not meant to actually be useful. If you want a package for factor handling, please see [forcats](https://forcats.tidyverse.org).**

foofactors
==========

<!-- badges: start -->
<!-- badges: end -->
Factors are a very useful type of variable in R, but they can also be very aggravating. This package provides some helper functions for the care and feeding of factors.

Installation
------------

You can install foofactors like so:

``` r
devtools::install_github("390-2020-09-Fall/foofactors")
```

Quick demo
----------

Binding two factors via `fbind()`:

``` r
library(foofactors)
a <- factor(c("character", "hits", "your", "eyeballs"))
b <- factor(c("but", "integer", "where it", "counts"))
```

Simply catenating two factors leads to a result that most don't expect.

``` r
c(a, b)
#> [1] 1 3 4 2 1 3 4 2
```

The `fbind()` function glues two factors together and returns factor.

``` r
fbind(a, b)
#> [1] character hits      your      eyeballs  but       integer   where it 
#> [8] counts   
#> Levels: but character counts eyeballs hits integer where it your
```

Often we want a table of frequencies for the levels of a factor. The base `table()` function returns an object of class `table`, which can be inconvenient for downstream work.

``` r
set.seed(1234)
x <- factor(sample(letters[1:5], size = 100, replace = TRUE))
table(x)
#> x
#>  a  b  c  d  e 
#> 19 19 21 22 19
```

The `fcount()` function returns a frequency table as a tibble with a column of factor levels and another of frequencies:

``` r
fcount(x)
#> # A tibble: 5 x 2
#>   f         n
#>   <fct> <int>
#> 1 d        22
#> 2 c        21
#> 3 a        19
#> 4 b        19
#> 5 e        19
```

The `roomrank()` function returns a data frame of a selection of dorm rooms in Smith College's Cushing House ranked from most to least desireable based on the following criteria: having southwest-facing window, located in corner, and located not near a bathroom:

``` r
ranked_df <- roomrank(room_data) 
best_rooms <- dplyr::filter(ranked_df, Score == 3)
best_rooms
#> # A tibble: 5 x 8
#>   Hall      Floor  Room `Room Type` SouthwestFacing Corner NotNearBathroom Score
#>   <chr>     <dbl> <dbl> <chr>                 <dbl>  <dbl>           <dbl> <dbl>
#> 1 Cushing …     2   207 Single                    1      1               1     3
#> 2 Cushing …     2   218 Single                    1      1               1     3
#> 3 Cushing …     3   307 Single                    1      1               1     3
#> 4 Cushing …     3   321 Single                    1      1               1     3
#> 5 Cushing …     4   405 Single                    1      1               1     3
```
