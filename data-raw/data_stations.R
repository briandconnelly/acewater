# Stations contains information about known monitoring stations

stations <- list(
    "BBLW" = ace_station(
        name = "Ballard Bridge",
        code = "BBLW",
        data_columns = c("Time",
                         "SaltA",
                         "SaltB",
                         "SaltC",
                         "TempA",
                         "TempB",
                         "TempC"),
        depths = c("A" = 11, "B" = 21, "C" = 32)
    ),
    "FBLW" = ace_station(
        name = "Fremont Bridge",
        code = "FBLW",
        data_columns = c("Time",
                         "SaltA",
                         "SaltB",
                         "SaltC",
                         "TempA",
                         "TempB",
                         "TempC"),
        depths = c("A" = 18, "B" = 31, "C" = 40)
    ),
    "UBLW" = ace_station(
        name = "University Bridge",
        code = "UBLW",
        data_columns = c("Time",
                         "SaltA",
                         "SaltB",
                         "SaltC",
                         "TempA",
                         "TempB",
                         "TempC"),
        depths = c("A" = 8, "B" = 21, "C" = 35)
    ),
    "GWLW" = ace_station(
        name = "Gas Works Park",
        code = "GWLW",
        data_columns = c("Time",
                         "SaltA",
                         "SaltB",
                         "SaltC",
                         "SaltD",
                         "TempA",
                         "TempB",
                         "TempC",
                         "TempD"),
        depths = c("A" = 5, "B" = 14, "C" = 29, "D" = 44)
    ),
    "LLLW" = ace_station(
        name = "Large Lock",
        code = "LLLW",
        data_columns = c("Time",
                         "SaltA",
                         "SaltB",
                         "SaltC",
                         "SaltD",
                         "TempA",
                         "TempB",
                         "TempC",
                         "TempD"),
        depths = c("A" = 18, "B" = 28, "C" = 36, "D" = 43)
    )
)

devtools::use_data(stations, internal = TRUE, overwrite = TRUE)
