#' Create Object Representing a Water Monitoring Station
#'
#' \code{ace_station} constructs \code{ace_station} objects, which store
#' information about water monitoring stations
#'
#' @param name The name of the station (e.g. "Fremont Bridge")
#' @param code Water monitoring station code (e.g. "FBLW")
#' @param project Code for project (e.g. "LKW" for Lake Washington Ship Canal)
#' @param data_columns Vector of names of columns in the data
#' @param data_units Vector of units corresponding to each entry in data_columns
#' @param depths Vector of depths, in feet, for the station's measurements
#' @param data_skiprows Number of rows to skip at the beginning of data file
#' @param data_url Station data url. By default, one will be created using the
#' standard url scheme and the monitoring station code.
#' @param latitude Station's latitude
#' @param longitude Station's longitude
#' @param web_url URL providing information about the station
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
ace_station <- function(name,
                        code,
                        project,
                        data_columns,
                        data_units = c(),
                        depths = c(),
                        data_skiprows,
                        data_url = NULL,
                        latitude = NULL,
                        longitude = NULL,
                        web_url = NULL) {
    x <- structure(
        list(
            name = name,
            code = code,
            project = project,
            data_columns = data_columns,
            data_units = data_units,
            depths = depths,
            data_skiprows = data_skiprows,
            data_url = ifelse(
                is.null(data_url),
                sprintf(
                    "http://www.nwd-wc.usace.army.mil/nws/hh/textdata/%s_%s.prn",
                    tolower(project),
                    tolower(code)
                ),
                data_url
            ),
            latitude = latitude,
            longitude = longitude,
            web_url = web_url
        ),
        class = "ace_station"
    )

    x
}
