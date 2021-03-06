% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ace_project.R
\name{ace_project}
\alias{ace_project}
\title{Create Object Representing a Water Monitoring Project/Basin}
\usage{
ace_project(name, code, stations = list(), info_url = NULL)
}
\arguments{
\item{name}{The name of the project (e.g. "Pend Oreille River Basin")}

\item{code}{Project code (e.g. "PND")}

\item{stations}{List of stations (\code{\link{ace_station}}) keyed by station
code}

\item{info_url}{Web URL for more information about project}
}
\value{
A \code{ace_project} object
}
\description{
Create Object Representing a Water Monitoring Project/Basin
}
\examples{
\dontrun{
my_project <- ace_project(
    name = "Pend Oreille River Basin",
    code = "PND",
    stations = my_stations
)
}

}
