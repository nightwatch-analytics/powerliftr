
<!-- README.md is generated from README.Rmd. Please edit that file -->

# powerliftr

<!-- badges: start -->
<!-- badges: end -->

This is a toolkit for workout analytics programming to assist in
calculating one rep max, training loads, and developing programs.
Recommended users include powerlifting coaches and athletes, NASM CPTs,
and athletes focused on improveing strength and conditioning.

## Installation

You can install the development version of powerliftr from
[GitHub](https://github.com/) with:

``` r
# install.packages("pak")
pak::pak("nightwatch-analytics/powerliftr")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(powerliftr)
# Profile for an athlete that lifted 135 lbs for 10 repetitions
epley_1rm(weight = 135, reps = 10)
#> [1] 180
```
