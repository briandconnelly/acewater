#' Plot a Station's Water Conditions using ggplot2
#'
#' \code{autoplot.ace_station} retrieves the latest water conditions and
#' creates a basic plot using the ggplot2 package (if installed).
#'
#' @param object An \code{ace_station} object
#' @param ... Additional arguments (not used)
#'
#' @return A \code{\link[ggplot2]{ggplot}} object
#' @export
#'
#' @examples
#' \dontrun{
#' library(acewater)
#' library(ggplot2)
#'
#' s1 <- get_station(station = "UBLW", project = "LKW")
#' autoplot(s1)
#' }
autoplot.ace_station <- function(object, ...) {
    autoplot.ace_conditions(get_water_conditions(object))
}
