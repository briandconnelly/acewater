#' Get Water Conditions for a Monitoring Station
#'
#' @param station Water monitoring station specified as a code (e.g. "FBLW") or as an \code{ace_water} object (e.g. from \code{get_station("FBLW")})
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
    UseMethod("get_water_conditions")
}


#' @rdname get_water_conditions
#' @export
get_water_conditions.ace_station <- function(station, na.rm = FALSE, ...) {

    z <- readr::read_lines(
        file = station$url,
        skip = station$data_skiprows,
    ) %>%
        utils::head(n = -2L) %>%
        stringi::stri_split_regex(pattern = "\\s{2,}", simplify = TRUE) %>%
        tibble::as_tibble()

    names(z) <- station$data_columns

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
            Project = forcats::as_factor(station$project),
            Station = forcats::as_factor(Station),
            Depth = ifelse(
                stringi::stri_sub(Field, -1) %in% LETTERS,
                station$depths[stringi::stri_sub(Field, -1)],
                as.numeric(NA)
            ),
            Measure = forcats::as_factor(
                ifelse(
                    stringi::stri_sub(Field, -1) %in% LETTERS,
                    stringi::stri_sub(Field, from = 1L, to = -2L),
                    Field
                )
            )
        ) %>%
        dplyr::select_("Time", "Project", "Station", "Depth", "Measure", "Value")

    if (na.rm) z %<>% stats::na.omit()

    z
}


#' @rdname get_water_conditions
#' @export
get_water_conditions.character <- function(project, station, na.rm = FALSE, ...) {
    if (length(station) > 1) {
        stop("Must supply only one station", call. = FALSE)
    }
    get_water_conditions(get_station(project, station))
}
