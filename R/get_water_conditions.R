#' Get Water Conditions for a Monitoring Station
#'
#' @param station A list containing station information. See \code{\link{get_station}}.
#' @param ... Additional arguments (not supported)
#'
#' @return A tibble
#' @export
#'
#' @examples
#' library(acewater)
#' s <- get_station(code = "FBLW")
#' get_water_conditions(station = s)
#'
get_water_conditions <- function(station, ...) {
    measurements <- c(
        "SaltA" = "Salinity",
        "SaltB" = "Salinity",
        "SaltC" = "Salinity",
        "SaltD" = "Salinity",
        "TempA" = "Temperature",
        "TempB" = "Temperature",
        "TempC" = "Temperature",
        "TempD" = "Temperature"
    )

    z <- readr::read_lines(
        file = sprintf("http://www.nwd-wc.usace.army.mil/nws/hh/textdata/lkw_%s.prn", tolower(station$code)),
        skip = 5
    ) %>%
        head(n = -2L) %>%
        stringi::stri_split_regex(pattern = "\\s{2,}", simplify = TRUE) %>%
        tibble::as_tibble() %>%
        dplyr::rename(Time = V1) %>%
        dplyr::mutate(
            Time = as.POSIXct(strptime(Time, format = "%a %d %b %Y %H%M")),
            Station = station$code
        )


    if (ncol(z) == 8) {
        z <- z %>%
            dplyr::rename(
                SaltA = V2,
                SaltB = V3,
                SaltC = V4,
                TempA = V5,
                TempB = V6,
                TempC = V7
            ) %>%
            readr::type_convert(
                col_types = readr::cols(
                    SaltA = readr::col_double(),
                    SaltB = readr::col_double(),
                    SaltC = readr::col_double(),
                    TempA = readr::col_double(),
                    TempB = readr::col_double(),
                    TempC = readr::col_double()
                )
            )
    } else if (ncol(z) == 10) {
        z <- z %>%
            dplyr::rename(
                SaltA = V2,
                SaltB = V3,
                SaltC = V4,
                SaltD = V5,
                TempA = V6,
                TempB = V7,
                TempC = V8,
                TempD = V9
            ) %>%
            readr::type_convert(
                col_types = readr::cols(
                    SaltA = readr::col_double(),
                    SaltB = readr::col_double(),
                    SaltC = readr::col_double(),
                    SaltD = readr::col_double(),
                    TempA = readr::col_double(),
                    TempB = readr::col_double(),
                    TempC = readr::col_double(),
                    TempD = readr::col_double()
                )
            )
    }

    z <- z %>%
        tidyr::gather(Field, Value, -Time, -Station) %>%
        dplyr::mutate(
            Depth = station$depths[stringi::stri_sub(Field, -1)],
            Measurement = forcats::as_factor(measurements[Field])
        ) %>%
        dplyr::select(Time, Station, Depth, Measurement, Value) %>%
        na.omit()

    z
}

