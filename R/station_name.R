#' Retrieve Information about a Monitoring Station
#'
#' @param code Water monitoring station code (e.g. "FBLW")
#' @export
#' @examples
#' library(acewater)
#'
#' station_name("FBLW")
#'
station_name <- function(code) {
    purrr::map_chr(code, function(x) ace_stations[[x]]$name)
}
