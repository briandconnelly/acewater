#' Get Water Conditions for a Monitoring Station
#'
#' @param station Water monitoring station code (e.g. "FBLW")
#' @param na.rm A logical value indicating whether \code{NA} values should be removed from the results (default: \code{FALSE})
#' @param ... Additional arguments (not supported)
#'
#' @return A tibble
#' @importFrom magrittr %>% %<>%
#' @export
#'
#' @examples
#' library(acewater)
#' get_water_conditions(station = "FBLW")
#'
get_water_conditions <- function(station, na.rm = FALSE, ...) {
    measures <- c("Salt" = "Salinity", "Temp" = "Temperature")

    station <- get_station(code = station)

    station_url <- ifelse(
        "url" %in% names(station),
        station$url,
        sprintf(
            "http://www.nwd-wc.usace.army.mil/nws/hh/textdata/lkw_%s.prn",
            tolower(station$code)
        )
    )

    z <- readr::read_lines(
        file = station_url,
        skip = 5
    ) %>%
        utils::head(n = -2L) %>%
        stringi::stri_split_regex(pattern = "\\s{2,}", simplify = TRUE) %>%
        tibble::as_tibble()

    names(z) <- station$columns

    z <- z %>%
        dplyr::mutate(
            Time = as.POSIXct(strptime(Time, format = "%a %d %b %Y %H%M")),
            Station = station$code
        ) %>%
        tidyr::gather(Field, Value, -Time, -Station) %>%
        readr::type_convert(
            col_types = readr::cols(
                Value = readr::col_double()
            )
        ) %>%
        dplyr::mutate(
            Depth = station$depths[stringi::stri_sub(Field, -1)],
            Measure = forcats::as_factor(
                measures[stringi::stri_sub(Field, 1, 4)]
            )
        ) %>%
        dplyr::select(Time, Station, Depth, Measure, Value)

    if (na.rm) z %<>% stats::na.omit()

    z
}
