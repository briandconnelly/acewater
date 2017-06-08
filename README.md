acewater
================

<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active) [![license](https://img.shields.io/github/license/mashape/apistatus.svg)]()

acewater provides an interface to the [US Army Corps of Engineers' Seattle District water monitoring data](http://www.nwd-wc.usace.army.mil/nws/hh/www/index.html). The main function, `get_water_conditions` returns a tidy data frame (a [tibble](http://tibble.tidyverse.org)).

Installation
------------

You can install acewater from github with:

``` r
# install.packages("devtools")
devtools::install_github("briandconnelly/acewater")
```

Example
-------

### Get the most recent conditions at the [Fremont Bridge](https://en.wikipedia.org/wiki/Fremont_Bridge_(Seattle)) (station FBLW)

``` r
library(acewater)

get_water_conditions(project = "LKW", station = "FBLW")
#> # A tibble: 156 x 6
#>                   Time Project Station Depth  Measure Value
#>                 <dttm>  <fctr>  <fctr> <dbl>   <fctr> <dbl>
#>  1 2017-06-06 16:00:00     LKW    FBLW    18 Salinity  0.04
#>  2 2017-06-06 17:00:00     LKW    FBLW    18 Salinity  0.04
#>  3 2017-06-06 18:00:00     LKW    FBLW    18 Salinity  0.04
#>  4 2017-06-06 19:00:00     LKW    FBLW    18 Salinity  0.04
#>  5 2017-06-06 20:00:00     LKW    FBLW    18 Salinity  0.04
#>  6 2017-06-06 21:00:00     LKW    FBLW    18 Salinity  0.04
#>  7 2017-06-06 22:00:00     LKW    FBLW    18 Salinity  0.04
#>  8 2017-06-06 23:00:00     LKW    FBLW    18 Salinity  0.04
#>  9 2017-06-07 00:00:00     LKW    FBLW    18 Salinity  0.04
#> 10 2017-06-07 01:00:00     LKW    FBLW    18 Salinity  0.04
#> # ... with 146 more rows
```

### Get Conditions from Multiple Stations

We can use [purrr](http://purrr.tidyverse.org) to combine data from multiple stations into a tidy data frame. Here, we'll get data from a few stations along the [Lake Washington Ship Canal](https://en.wikipedia.org/wiki/Lake_Washington_Ship_Canal).

``` r
purrr::map_df(c("UBLW", "FBLW", "LLLW"), get_water_conditions, project = "LKW")
#> Warning in bind_rows_(x, .id): Unequal factor levels: coercing to character
#> # A tibble: 520 x 6
#>                   Time Project Station Depth  Measure Value
#>                 <dttm>  <fctr>   <chr> <dbl>   <fctr> <dbl>
#>  1 2017-06-06 16:00:00     LKW    UBLW     8 Salinity  0.03
#>  2 2017-06-06 17:00:00     LKW    UBLW     8 Salinity  0.03
#>  3 2017-06-06 18:00:00     LKW    UBLW     8 Salinity  0.03
#>  4 2017-06-06 19:00:00     LKW    UBLW     8 Salinity  0.03
#>  5 2017-06-06 20:00:00     LKW    UBLW     8 Salinity  0.03
#>  6 2017-06-06 21:00:00     LKW    UBLW     8 Salinity  0.03
#>  7 2017-06-06 22:00:00     LKW    UBLW     8 Salinity  0.03
#>  8 2017-06-06 23:00:00     LKW    UBLW     8 Salinity  0.03
#>  9 2017-06-07 00:00:00     LKW    UBLW     8 Salinity  0.03
#> 10 2017-06-07 01:00:00     LKW    UBLW     8 Salinity  0.03
#> # ... with 510 more rows
```

Contributer Code of Conduct
---------------------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
