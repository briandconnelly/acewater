#' Find the Project/Basin Associated with a Monitoring Station
#'
#' @param station Water monitoring station code (e.g. "FBLW")
#'
#' @return A character array containing the project code (e.g. "LKW"). If the
#' station is unknown, \code{NULL} is returned.
#' @export
#'
#' @examples
#' library(acewater)
#' find_project("FBLW")
#'
find_project <- function(station) {
    pcode <- c()

    for (project in ace_projects) {
        if (toupper(station) %in% names(project$stations)) {
            pcode <- append(pcode, project$code)
        }
    }
    pcode
}
