#' Get Information about a Monitoring Station
#'
#' @param code Water monitoring station code (e.g. "FBLW")
#' @param ... Additional arguments (not supported)
#'
#' @return A list containing information about a monitoring station
#' @export
#'
#' @examples
#' library(acewater)
#' s <- get_station(code = "FBLW")
#'
get_station <- function(code, ...) {
    if (!toupper(code) %in% names(stations)) {
        stop(sprintf("Station '%s' is not known", code), call. = FALSE)
    }

    structure(
        stations[[toupper(code)]],
        class = "ace_station"
    )
}
