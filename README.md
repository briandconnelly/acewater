acewater
================

<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Project Status: Active – The project has reached a stable, usable state and is being actively developed.](http://www.repostatus.org/badges/latest/active.svg)](http://www.repostatus.org/#active) [![license](https://img.shields.io/github/license/mashape/apistatus.svg)]()

acewater provides an interface to the [US Army Corps of Engineers' water monitoring data along the Lake Washington Ship Canal](http://www.nwd-wc.usace.army.mil/nws/hh/www/index.html). The main function, `get_water_conditions` returns a tidy data frame (a [tibble](http://tibble.tidyverse.org)).

Installation
------------

You can install acewater from github with:

``` r
# install.packages("devtools")
devtools::install_github("briandconnelly/acewater")
```

Example
-------

Get the most recent conditions at the Fremont Bridge (station FBLW)

``` r
library(acewater)
library(magrittr)

get_station("FBLW") %>%
    get_water_conditions()
#> # A tibble: 156 x 5
#>                   Time Station Depth Measurement Value
#>                 <dttm>   <chr> <dbl>      <fctr> <dbl>
#>  1 2017-05-24 11:00:00    FBLW    18    Salinity  0.04
#>  2 2017-05-24 12:00:00    FBLW    18    Salinity  0.04
#>  3 2017-05-24 13:00:00    FBLW    18    Salinity  0.04
#>  4 2017-05-24 14:00:00    FBLW    18    Salinity  0.04
#>  5 2017-05-24 15:00:00    FBLW    18    Salinity  0.04
#>  6 2017-05-24 16:00:00    FBLW    18    Salinity  0.04
#>  7 2017-05-24 17:00:00    FBLW    18    Salinity  0.04
#>  8 2017-05-24 18:00:00    FBLW    18    Salinity  0.04
#>  9 2017-05-24 19:00:00    FBLW    18    Salinity  0.04
#> 10 2017-05-24 20:00:00    FBLW    18    Salinity  0.04
#> # ... with 146 more rows
```

Contributer Code of Conduct
---------------------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
