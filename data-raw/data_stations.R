# ace_project contains a list of project names and their codes
ace_projects <- list(
    "chh" = "Chehalis River Basin",
    "ewa" = "Eastern Washington Rivers",
    "flt" = "Flathead and Clark Fork Rivers",
    "grn" = "Green River Basin",
    "kot" = "Kootenai River Basin",
    "lkw" = "Lake Washington",
    "pnd" = "Pend Oreille River Basin",
    "puy" = "Puyallup River Basin",
    "skg" = "Skagit River Basin"
)


# Stations contains information about known monitoring stations
ace_stations <- list(
    "BBLW" = ace_station(
        name = "Ballard Bridge",
        code = "BBLW",
        data_columns = c("Time",
                         "SalinityA",
                         "SalinityB",
                         "SalinityC",
                         "TemperatureA",
                         "TemperatureB",
                         "TemperatureC"),
        depths = c("A" = 11, "B" = 21, "C" = 32),
        data_skiprows = 5
    ),
    "FBLW" = ace_station(
        name = "Fremont Bridge",
        code = "FBLW",
        data_columns = c("Time",
                         "SalinityA",
                         "SalinityB",
                         "SalinityC",
                         "TemperatureA",
                         "TemperatureB",
                         "TemperatureC"),
        depths = c("A" = 18, "B" = 31, "C" = 40),
        data_skiprows = 5
    ),
    "UBLW" = ace_station(
        name = "University Bridge",
        code = "UBLW",
        data_columns = c("Time",
                         "SalinityA",
                         "SalinityB",
                         "SalinityC",
                         "TemperatureA",
                         "TemperatureB",
                         "TemperatureC"),
        depths = c("A" = 8, "B" = 21, "C" = 35),
        data_skiprows = 5
    ),
    "GWLW" = ace_station(
        name = "Gas Works Park",
        code = "GWLW",
        data_columns = c("Time",
                         "SalinityA",
                         "SalinityB",
                         "SalinityC",
                         "SalinityD",
                         "TemperatureA",
                         "TemperatureB",
                         "TemperatureC",
                         "TemperatureD"),
        depths = c("A" = 5, "B" = 14, "C" = 29, "D" = 44),
        data_skiprows = 5
    ),
    "LLLW" = ace_station(
        name = "Large Lock",
        code = "LLLW",
        data_columns = c("Time",
                         "SalinityA",
                         "SalinityB",
                         "SalinityC",
                         "SalinityD",
                         "TemperatureA",
                         "TemperatureB",
                         "TemperatureC",
                         "TemperatureD"),
        depths = c("A" = 18, "B" = 28, "C" = 36, "D" = 43),
        data_skiprows = 5
    ),
    "FISH2" = ace_station(
        name = "Fish Ladder",
        code = "FISH2",
        data_columns = c("Time",
                         "Conductivity",
                         "Salinity",
                         "Temperature",
                         "FishUp",
                         "FishDn"),
        depths = c(),
        data_skiprows = 6
    ),
    "BTHS" = ace_station(
        name = "Locks Boathouse",
        code = "BTHS",
        data_columns = c("Time",
                         "Elevation"),
        depths = c(),
        data_skiprows = 6
    ),
    "KNMR" = ace_station(
        name = "Kenmore Gage",
        code = "KNMR",
        data_columns = c("Time",
                         "Elevation"),
        depths = c(),
        data_skiprows = 5
    ),
    "RNTW" = ace_station(
        name = "Cedar River at Renton",
        code = "RNTW",
        data_columns = c("Time",
                         "Stage",
                         "Flow"),
        depths = c(),
        data_skiprows = 5
    )
)

devtools::use_data(ace_projects, ace_stations, internal = TRUE, overwrite = TRUE)
rm(ace_projects, ace_stations)
