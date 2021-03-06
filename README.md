acewater
================

<!-- README.md is generated from README.Rmd. Please edit that file -->
[![Project Status: Abandoned – Initial development has started, but there has not yet been a stable, usable release; the project has been abandoned and the author(s) do not intend on continuing development.](https://www.repostatus.org/badges/latest/abandoned.svg)](https://www.repostatus.org/#abandoned) [![license](https://img.shields.io/github/license/mashape/apistatus.svg)]()

**Note:** The data feeds used by this package are no longer publicly available, so this package does not work

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

(gcl <- get_water_conditions(station = "GCL", project = "EWA"))
#> # A tibble: 42 x 6
#>          Time Project Station Depth     Measure   Value
#>        <dttm>  <fctr>  <fctr> <dbl>      <fctr>   <dbl>
#>  1 2017-06-03     EWA     GCL    NA ElevForebay 1263.29
#>  2 2017-06-04     EWA     GCL    NA ElevForebay 1265.77
#>  3 2017-06-05     EWA     GCL    NA ElevForebay 1267.69
#>  4 2017-06-06     EWA     GCL    NA ElevForebay 1269.61
#>  5 2017-06-07     EWA     GCL    NA ElevForebay 1271.45
#>  6 2017-06-08     EWA     GCL    NA ElevForebay 1272.87
#>  7 2017-06-09     EWA     GCL    NA ElevForebay 1274.10
#>  8 2017-06-10     EWA     GCL    NA ElevForebay 1275.37
#>  9 2017-06-11     EWA     GCL    NA ElevForebay 1276.71
#> 10 2017-06-12     EWA     GCL    NA ElevForebay 1277.87
#> # ... with 32 more rows
```

We can easily plot the water conditions for a given station (if [ggplot2](http://ggplot2.tidyverse.org) is installed).

``` r
library(ggplot2)

autoplot(gcl)
```

![](README-Example%20Plot%20Grand%20Coulee%20Dam-1.png)

### Get the most recent conditions at the [Fremont Bridge](https://en.wikipedia.org/wiki/Fremont_Bridge_(Seattle)) (station FBLW) in the [Lake Washington Ship Canal](https://en.wikipedia.org/wiki/Lake_Washington_Ship_Canal) (project LKW):

Here, we see that this station monitors different properties:

``` r
(fblw <- get_water_conditions(station = "FBLW", project = "LKW"))
#> # A tibble: 156 x 6
#>                   Time Project Station Depth  Measure Value
#>                 <dttm>  <fctr>  <fctr> <dbl>   <fctr> <dbl>
#>  1 2017-06-15 12:00:00     LKW    FBLW    18 Salinity  0.04
#>  2 2017-06-15 13:00:00     LKW    FBLW    18 Salinity  0.04
#>  3 2017-06-15 14:00:00     LKW    FBLW    18 Salinity  0.04
#>  4 2017-06-15 15:00:00     LKW    FBLW    18 Salinity  0.04
#>  5 2017-06-15 16:00:00     LKW    FBLW    18 Salinity  0.04
#>  6 2017-06-15 17:00:00     LKW    FBLW    18 Salinity  0.04
#>  7 2017-06-15 18:00:00     LKW    FBLW    18 Salinity  0.04
#>  8 2017-06-15 19:00:00     LKW    FBLW    18 Salinity  0.04
#>  9 2017-06-15 20:00:00     LKW    FBLW    18 Salinity  0.04
#> 10 2017-06-15 21:00:00     LKW    FBLW    18 Salinity  0.04
#> # ... with 146 more rows
autoplot(fblw)
```

![](README-Example%20Fremont%20Bridge-1.png)

### Get Conditions from Multiple Stations

We can use [purrr](http://purrr.tidyverse.org) to combine data from multiple stations into a tidy data frame. Here, we'll get data from a few stations along the [Lake Washington Ship Canal](https://en.wikipedia.org/wiki/Lake_Washington_Ship_Canal).

``` r
(lkw <- purrr::map_df(c("UBLW", "FBLW", "LLLW"), get_water_conditions, project = "LKW"))
#> # A tibble: 520 x 6
#>                   Time Project Station Depth  Measure Value
#>                 <dttm>  <fctr>   <chr> <dbl>   <fctr> <dbl>
#>  1 2017-06-15 12:00:00     LKW    UBLW     8 Salinity  0.03
#>  2 2017-06-15 13:00:00     LKW    UBLW     8 Salinity  0.03
#>  3 2017-06-15 14:00:00     LKW    UBLW     8 Salinity  0.03
#>  4 2017-06-15 15:00:00     LKW    UBLW     8 Salinity  0.03
#>  5 2017-06-15 16:00:00     LKW    UBLW     8 Salinity  0.03
#>  6 2017-06-15 17:00:00     LKW    UBLW     8 Salinity  0.03
#>  7 2017-06-15 18:00:00     LKW    UBLW     8 Salinity  0.03
#>  8 2017-06-15 19:00:00     LKW    UBLW     8 Salinity  0.03
#>  9 2017-06-15 20:00:00     LKW    UBLW     8 Salinity  0.03
#> 10 2017-06-15 21:00:00     LKW    UBLW     8 Salinity  0.03
#> # ... with 510 more rows
autoplot(lkw)
```

![](README-Example%20Multiple%20Stations-1.png)

Data Subject to Revision
------------------------

Because the data retrieved by acewater are preliminary and have not been verified or approved by the agencies collecting them, inaccuracies may be present due to instrument malfunctions or physical changes at the measurement site.

Contributer Code of Conduct
---------------------------

Please note that this project is released with a [Contributor Code of Conduct](CONDUCT.md). By participating in this project you agree to abide by its terms.
