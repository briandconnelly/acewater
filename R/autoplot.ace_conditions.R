#' Plot Water Conditions using ggplot2
#'
#' \code{autoplot.ace_conditions} creates a basic plot of water conditions using
#' the ggplot2 package (if installed).
#'
#' @param object An \code{ace_conditions} object
#' @param title Plot title
#' @param subtitle Plot subtitle
#'
#' @return A \code{\link[ggplot2]{ggplot}} object
#' @export
#'
#' @examples
#' \dontrun{
#' library(acewater)
#' library(ggplot2)
#'
#' cUBLW <- get_water_conditions("UBLW")
#' autoplot(cUBLW)
#' }
autoplot.ace_conditions <- function(object, title = NULL, subtitle = NULL, ...) {
    if (!requireNamespace("ggplot2", quietly = TRUE)) {
        stop("This function requires the 'ggplot2' package", call. = FALSE)
    }

    project <- as.character(unique(object$Project))
    station <- as.character(unique(object$Station))

    if (is.null(title) && length(project) == 1 && length(station) == 1) {
        title <- sprintf(
            "Conditions at %s (%s)",
            ace_projects[[project]]$stations[[station]],
            station
        )
    }

    if (is.null(subtitle) && !is.null(attr(object, "retrieved"))) {
        subtitle <- sprintf("Data Retrieved %s", attr(object, "retrieved"))
    }

    p <- ggplot2::ggplot(
        data = object,
        mapping = ggplot2::aes(
            x = Time,
            y = Value
        )
    ) +
        ggplot2::scale_x_datetime() +
        ggplot2::scale_y_continuous(name = NULL) +
        ggplot2::ggtitle(label = title, subtitle = subtitle)

    if (all(is.na(object$Depth))) {
        p <- p + ggplot2::geom_line()
    } else {
        p <- p +
            ggplot2::geom_line(
                mapping = ggplot2::aes(
                    color = factor(
                        Depth,
                        levels = sort(unique(object$Depth))
                    )
                )
            ) +
            ggplot2::scale_color_discrete(name = "Depth (ft)")
    }

    if (length(station) > 1) {
        p <- p + ggplot2::facet_grid(Measure ~ Station, scales = "free_y")
    }
    else {
        p <- p + ggplot2::facet_grid(Measure ~ ., scales = "free_y")
    }

    p
}
