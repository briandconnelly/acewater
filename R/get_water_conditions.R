#' Get Water Conditions for a Monitoring Station
#'
#' @param station Water monitoring station specified as a code (e.g. "FBLW") or as an \code{ace_water} object (e.g. from \code{get_station("FBLW")})
#' @param project Station's project code (e.g. "LKW")
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
        file = station$data_url,
        skip = station$data_skiprows
    ) %>%
        utils::head(n = -2L) %>%
        stringi::stri_split_regex(pattern = "\\s{2,}", simplify = TRUE) %>%
        tibble::as_tibble()

    names(z) <- station$data_columns

    z <- z %>%
        tidyr::gather_(
            key_col = "Field",
            value_col = "Value",
            gather_cols = names(z)[2:length(names(z))]
        ) %>%
        dplyr::mutate(
            Time = as.POSIXct(strptime(Time, format = "%a %d %b %Y %H%M")),
            Project = forcats::as_factor(station$project),
            Station = forcats::as_factor(station$code),
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
            ),
            Value = as.numeric(Value)
        ) %>%
        dplyr::select_("Time", "Project", "Station", "Depth", "Measure", "Value")

    if (na.rm) z %<>% stats::na.omit()

    class(z) <- union("ace_conditions", class(z))
    attr(z, "project_name") <- ace_projects[[station$project]]$name
    attr(z, "station_name") <- station$name
    attr(z, "retrieved") <- Sys.time()

    z
}


#' @rdname get_water_conditions
#' @export
get_water_conditions.character <- function(station, project, na.rm = FALSE, ...) {
    if (length(station) > 1) {
        stop("Must supply only one station", call. = FALSE)
    }

    if (missing(project)) {
        found_projects <- find_project(station)

        if (length(found_projects) == 0) {
            stop(
                sprintf("Could not find project for station '%s'", station),
                call. = FALSE
            )
        } else if (length(found_projects) == 1) {
            project <- found_projects[1]
        } else {
            stop(
                sprintf("Station code '%s' is associated with multiple projects (%s)", station, paste(found_projects, collapse = ", ")),
                call. = FALSE
            )
        }
    }

    get_water_conditions(get_station(project, station))
}
