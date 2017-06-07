#' Create Objects Representing Water Monitoring Stations
#'
#' \code{ace_station} constructs \code{ace_station} objects, which store
#' information about water monitoring stations
#'
#' @param name The name of the station (e.g. "Fremont Bridge)
#' @param code Water monitoring station code (e.g. "FBLW")
#' @param data_columns Vector of names of columns in the data
#' @param depths Vector of depths, in feet, for the station's measurements
#' @param data_skiprows Number of rows to skip at the beginning of data file
#' @param url Station data url. By default, one will be created using the
#' standard url scheme and the monitoring station code.
#'
#' @return An \code{ace_station} object
#' @export
#'
#' @examples
#' my_station <- ace_station(
#'     name = "Fremont Bridge",
#'     code = "FBLW",
#'     data_columns = c("Time", "SaltA", "SaltB", "SaltC", "TempA", "TempB", "TempC"),
#'     depths = c("A" = 18, "B" = 31, "C" = 40),
#'     data_skiprows = 5
#' )
#'
ace_station <- function(name, code, data_columns, depths = c(), data_skiprows, url = NULL) {
    x <- structure(
        list(
            name = name,
            code = code,
            data_columns = data_columns,
            depths = depths,
            data_skiprows = data_skiprows,
            url = ifelse(
                is.null(url),
                sprintf(
                    "http://www.nwd-wc.usace.army.mil/nws/hh/textdata/lkw_%s.prn",
                    tolower(code)
                ),
                url
            )
        ),
        class = "ace_station"
    )

    x
}
