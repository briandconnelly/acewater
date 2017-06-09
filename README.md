acewater
================

<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active) [![license](https://img.shields.io/github/license/mashape/apistatus.svg)]()

acewater provides an interface to the real-time water monitoring data provided by the [Water Management Section of the Seattle District Corps of Engineers](http://www.nwd-wc.usace.army.mil/nws/hh/www/index.html), which covers most of Washington, Northern Idaho, and Northwestern Montana. The main function, `get_water_conditions` returns a tidy data frame (a [tibble](http://tibble.tidyverse.org)).

Installation
------------

You can install acewater from github with:

``` r
# install.packages("devtools")
devtools::install_github("briandconnelly/acewater")
```

Example
-------

### Get the current conditions at the [Grand Coulee Dam](https://en.wikipedia.org/wiki/Grand_Coulee_Dam) (GCL), part of the [Eastern Washington Rivers](http://www.nwd-wc.usace.army.mil/nws/hh/www/eastern.html) (EWA) project:

``` r
library(acewater)

get_water_conditions(station = "GCL", project = "EWA")
#> # A tibble: 42 x 6
#>          Time Project Station Depth     Measure   Value
#>        <dttm>  <fctr>  <fctr> <dbl>      <fctr>   <dbl>
#>  1 2017-05-27     EWA     GCL    NA ElevForebay 1250.21
#>  2 2017-05-28     EWA     GCL    NA ElevForebay 1251.64
#>  3 2017-05-29     EWA     GCL    NA ElevForebay 1252.05
#>  4 2017-05-30     EWA     GCL    NA ElevForebay 1254.28
#>  5 2017-05-31     EWA     GCL    NA ElevForebay 1255.93
#>  6 2017-06-01     EWA     GCL    NA ElevForebay 1258.06
#>  7 2017-06-02     EWA     GCL    NA ElevForebay 1260.49
#>  8 2017-06-03     EWA     GCL    NA ElevForebay 1263.29
#>  9 2017-06-04     EWA     GCL    NA ElevForebay 1265.77
#> 10 2017-06-05     EWA     GCL    NA ElevForebay 1267.69
#> # ... with 32 more rows
```

### Get the most recent conditions at the [Fremont Bridge](https://en.wikipedia.org/wiki/Fremont_Bridge_(Seattle)) (station FBLW) in the [Lake Washington Ship Canal](https://en.wikipedia.org/wiki/Lake_Washington_Ship_Canal) (project LKW):

``` r
library(acewater)

get_water_conditions(station = "FBLW", project = "LKW")
#> # A tibble: 156 x 6
#>                   Time Project Station Depth  Measure Value
#>                 <dttm>  <fctr>  <fctr> <dbl>   <fctr> <dbl>
#>  1 2017-06-08 12:00:00     LKW    FBLW    18 Salinity  0.04
#>  2 2017-06-08 13:00:00     LKW    FBLW    18 Salinity  0.04
#>  3 2017-06-08 14:00:00     LKW    FBLW    18 Salinity  0.04
#>  4 2017-06-08 15:00:00     LKW    FBLW    18 Salinity  0.04
#>  5 2017-06-08 16:00:00     LKW    FBLW    18 Salinity  0.04
#>  6 2017-06-08 17:00:00     LKW    FBLW    18 Salinity  0.04
#>  7 2017-06-08 18:00:00     LKW    FBLW    18 Salinity  0.04
#>  8 2017-06-08 19:00:00     LKW    FBLW    18 Salinity  0.04
#>  9 2017-06-08 20:00:00     LKW    FBLW    18 Salinity  0.04
#> 10 2017-06-08 21:00:00     LKW    FBLW    18 Salinity  0.04
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
#>  1 2017-06-08 12:00:00     LKW    UBLW     8 Salinity  0.03
#>  2 2017-06-08 13:00:00     LKW    UBLW     8 Salinity  0.03
#>  3 2017-06-08 14:00:00     LKW    UBLW     8 Salinity  0.03
#>  4 2017-06-08 15:00:00     LKW    UBLW     8 Salinity  0.03
#>  5 2017-06-08 16:00:00     LKW    UBLW     8 Salinity  0.03
#>  6 2017-06-08 17:00:00     LKW    UBLW     8 Salinity  0.03
#>  7 2017-06-08 18:00:00     LKW    UBLW     8 Salinity  0.03
#>  8 2017-06-08 19:00:00     LKW    UBLW     8 Salinity  0.03
#>  9 2017-06-08 20:00:00     LKW    UBLW     8 Salinity  0.03
#> 10 2017-06-08 21:00:00     LKW    UBLW     8 Salinity  0.03
#> # ... with 510 more rows
```

Data Subject to Revision
------------------------

Because the data retrieved by acewater are preliminary and have not been verified or approved by the agencies collecting them, inaccuracies may be present due to instrument malfunctions or physical changes at the measurement site.

Contributer Code of Conduct
---------------------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
