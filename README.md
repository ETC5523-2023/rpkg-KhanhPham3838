
<!-- README.md is generated from README.Rmd. Please edit that file -->

# maccaindex <a href="https://github.com/ETC5523-2023/rpkg-KhanhPham3838"><img src="man/figures/logo.png" align="right" height="138" /></a>

<!-- badges: start -->

[![R-CMD-check](https://github.com/ETC5523-2023/rpkg-KhanhPham3838/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ETC5523-2023/rpkg-KhanhPham3838/actions/workflows/R-CMD-check.yaml)
<!-- badges: end -->

## Purpose

The goal of `maccaindex` package is to provide functions for
visualizations and analysis of The Economist’s Big Mac Index. We aim to
spark the fire of learning economic theories through visual mediums. The
package includes the original dataset for the user to play with, a
customization plotting function, a numerical function to deal with
multiple types of vectors, and a Shiny app that allow users to explore
and understand the Big Mac Index data.

## Installation

You can install the development version of maccaindex from
[GitHub](https://github.com/ETC5523-2023/rpkg-KhanhPham3838) with:

``` r
# install.packages("devtools")
devtools::install_github("ETC5523-2023/rpkg-KhanhPham3838")
```

## Overview

`maccaindex` consists of the following functions:

- `macca_raw` results in the Big Mac Index raw data.
- `maccapp()` runs the accompanied Big Mac Index visualization R Shiny
  app.
- `macca_inflation_plot()` plots the inflation rate of different
  countries based on Big Mac prices, in local or US prices depending on
  the user.
- `magicwand_df()` invokes the various results that can be used to aid
  data analysis for a variety of data types.

## Usage

``` r
library(maccaindex)

data("macca_raw", package = "maccaindex")
macca_raw
#> # A tibble: 1,386 × 19
#>    date       iso_a3 currency_code name       local_price dollar_ex dollar_price
#>    <date>     <chr>  <chr>         <chr>            <dbl>     <dbl>        <dbl>
#>  1 2000-04-01 ARG    ARS           Argentina         2.5       1            2.5 
#>  2 2000-04-01 AUS    AUD           Australia         2.59      1.68         1.54
#>  3 2000-04-01 BRA    BRL           Brazil            2.95      1.79         1.65
#>  4 2000-04-01 CAN    CAD           Canada            2.85      1.47         1.94
#>  5 2000-04-01 CHE    CHF           Switzerla…        5.9       1.7          3.47
#>  6 2000-04-01 CHL    CLP           Chile          1260       514            2.45
#>  7 2000-04-01 CHN    CNY           China             9.9       8.28         1.20
#>  8 2000-04-01 CZE    CZK           Czech Rep…       54.4      39.1          1.39
#>  9 2000-04-01 DNK    DKK           Denmark          24.8       8.04         3.08
#> 10 2000-04-01 EUZ    EUR           Euro area         2.56      1.08         2.38
#> # ℹ 1,376 more rows
#> # ℹ 12 more variables: usd_raw <dbl>, eur_raw <dbl>, gbp_raw <dbl>,
#> #   jpy_raw <dbl>, cny_raw <dbl>, gdp_dollar <dbl>, adj_price <dbl>,
#> #   usd_adjusted <dbl>, eur_adjusted <dbl>, gbp_adjusted <dbl>,
#> #   jpy_adjusted <dbl>, cny_adjusted <dbl>

# Single argument functionality for numerical vector
vectorx <- c(1, 2, 3, 4, 5)
result <- magicwand_df(vectorx)
print(result)
#>         Names Values
#> 1     Minimum      1
#> 2 Lower Hinge      2
#> 3          Q1      2
#> 4      Median      3
#> 5          Q3      4
#> 6 Upper Hinge      4
#> 7     Maximum      5

# Two-argument functionality for numerical and character/factor vectors
vectorx <- c(1, 2, 1, 2, 1)
vectory <- c("apple", "banana", "apple", "banana", "banana")
result <- magicwand_df(vectorx, vectory)
print(result)
#>   Levels     Mean
#> 1  apple 1.000000
#> 2 banana 1.666667

# Interactive plot ()
# macca_inflation_plot("US")

# The app is not ran in example as it would hinder render process
# maccapp()
```

## Getting help

If there are any questions or issues with the package, please send me an
email at [Monash email](mpha0054@student.monash.edu). Thank you for
reading, hope you enjoy my little package 😊.
