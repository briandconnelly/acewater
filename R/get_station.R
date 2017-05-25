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
    stations <- list(
        "BBLW" = list(
            code = "BBLW",
            name = "Ballard Bridge",
            latitude = NA,
            longitude = NA,
            depths = c("A" = 11, "B" = 21, "C" = 32)
        ),
        "FBLW" = list(
            code = "FBLW",
            name = "Fremont Bridge",
            latitude = NA,
            longitude = NA,
            depths = c("A" = 18, "B" = 31, "C" = 40)
        ),
        "UBLW" = list(
            code = "UBLW",
            name = "University Bridge",
            latitude = NA,
            longitude = NA,
            depths = c("A" = 8, "B" = 21, "C" = 35)
        ),
        "GWLW" = list(
            code = "GWLW",
            name = "Gas Works Park",
            latitude = NA,
            longitude = NA,
            depths = c("A" = 5, "B" = 14, "C" = 29, "D" = 44)
        ),
        "LLLW" = list(
            code = "LLLW",
            name = "Large Lock",
            latitude = NA,
            longitude = NA,
            depths = c("A" = 18, "B" = 28, "C" = 36, "D" = 43)
        )
    )
    stations[[code]]
}
