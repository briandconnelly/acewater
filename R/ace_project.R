#' Create Object Representing a Water Monitoring Project/Basin
#'
#' @param name The name of the project (e.g. "Pend Oreille River Basin")
#' @param code Project code (e.g. "PND")
#' @param stations List of stations (\code{\link{ace_station}}) keyed by station
#' code
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
ace_project <- function(name, code, stations = list(), web_url = NULL) {
    structure(
        list(
            name = name,
            code = code,
            stations = stations,
            web_url = web_url
        ),
        class = "ace_project"
    )
}
