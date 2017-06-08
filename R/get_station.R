#' Get Information about a Monitoring Station
#'
#' @param project Project/basin code (e.g. "LKW")
#' @param code Water monitoring station code (e.g. "FBLW")
#' @param ... Additional arguments (not supported)
#'
#' @return A list containing information about a monitoring station
#' @export
#'
#' @examples
#' library(acewater)
#' s <- get_station(project = "LKW", code = "FBLW")
#'
get_station <- function(project, code, ...) {
    if (!toupper(project) %in% names(ace_projects)) {
        stop(sprintf("Project/basin '%s' is not known", project), call. = FALSE)
    }

    if (!toupper(code) %in% names(ace_projects[[project]]$stations)) {
        stop(sprintf("Station '%s' is not known", code), call. = FALSE)
    }

    ace_projects[[toupper(project)]]$stations[[toupper(code)]]
}
