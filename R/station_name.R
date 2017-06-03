#' @export
station_name <- function(code) {
    purrr:::map_chr(code, { acewater:::stations[[.]]$name })
}
