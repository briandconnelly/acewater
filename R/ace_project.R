#' Create Object Representing a Water Monitoring Project/Basin
#'
#' @param name The name of the project (e.g. "Pend Oreille River Basin")
#' @param code Project code (e.g. "PND")
#' @param stations List of stations (\code{\link{ace_station}}) keyed by station
#' code
#' @param info_url Web URL for more information about project
#'
#' @return A \code{ace_project} object
#' @export
#'
#' @examples
#' \dontrun{
#' my_project <- ace_project(
#'     name = "Pend Oreille River Basin",
#'     code = "PND",
#'     stations = my_stations
#' )
#' }
#'
ace_project <- function(name, code, stations = list(), info_url = NULL) {
    structure(
        list(
            name = name,
            code = code,
            stations = stations,
            info_url = info_url
        ),
        class = "ace_project"
    )
}
