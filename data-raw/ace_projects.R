# ace_project contains information about different projects/basins
ace_projects <- list(
    "CHH" = ace_project(
        name = "Chehalis River Basin",
        code = "CHH",
        stations = list(
            "BIGW" = ace_station(
                name = "Big Creek Near Grisdale",
                code = "BIGW",
                project = "CHH",
                data_columns = c("Time", "Stage"),
                data_units = c("", "ft"),
                depths = c(),
                data_skiprows = 5
            ),
            "MNSW" = ace_station(
                name = "Wynoochee River Above Black Creek Near Montesano",
                code = "MNSW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "SKMW" = ace_station(
                name = "Skookumchuck River Near Centralia",
                code = "SKMW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "BCDW" = ace_station(
                name = "Skookumchuck River Near Bucoda",
                code = "BCDW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "CENW" = ace_station(
                name = "Chehalis River at Centralia",
                code = "CENW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow", "Precipitation"),
                data_units = c("", "ft", "cfs", "in"),
                depths = c(),
                data_skiprows = 5
            ),
            "DOTW" = ace_station(
                name = "Chehelis River Near Doty",
                code = "DOTW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "CGMW" = ace_station(
                name = "Chehalis River Near Grand Mound",
                code = "CGMW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "NASW" = ace_station(
                name = "Naselle River Near Naselle",
                code = "NASW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "NEWW" = ace_station(
                name = "Newaukum River Near Chehalis",
                code = "NEWW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "CTAW" = ace_station(
                name = "Skookumchuck River at Pearl Street",
                code = "CTAW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "CRPW" = ace_station(
                name = "Chehalis River at Porter",
                code = "CRPW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "SATW" = ace_station(
                name = "Satsop River Near Satsop",
                code = "SATW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "WYAW" = ace_station(
                name = "Wynoochee River Above Save Creek Near Aberdeen",
                code = "SATW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "VALW" = ace_station(
                name = "Skookumchuck River Near Vail",
                code = "VALW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "WILW" = ace_station(
                name = "Willapa River Near Willapa",
                code = "WILW",
                project = "CHH",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "WYN" = ace_station(
                name = "Wynoochee Dam",
                code = "WYN",
                project = "CHH",
                data_columns = c("Time", "ElevForebay", "Storage", "Stage", "Discharge", "Inflow"),
                data_units = c("", "ft", "ac-ft", "ft", "cfs", "cfs"),
                depths = c(),
                data_skiprows = 5
            )
        )
    ),
    "EWA" = ace_project(
        name = "Eastern Washington Rivers",
        code = "EWA",
        stations = list(
            "CTLI" = ace_station(
                name = "Coeur D'Alene at Cataldo",
                code = "CTLI",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "CHJ" = ace_station(
                name = "Chief Joseph Dam",
                code = "CHJ",
                project = "EWA",
                data_columns = c("Time", "ElevForebay", "Inflow", "Outflow"),
                data_units = c("", "ft", "cfs", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "YUMW" = ace_station(
                name = " Yakima River at Cle Elum",
                code = "YUMW",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "COEI" = ace_station(
                name = "Coeur d'Alene Lake",
                code = "COEI",
                project = "EWA",
                data_columns = c("Time", "ElevForebay", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "ENVI" = ace_station(
                name = "Enaville",
                code = "ENVI",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "GCL" = ace_station(
                name = "Grand Coulee Dam",
                code = "GCL",
                project = "EWA",
                data_columns = c("Time", "ElevForebay", "Inlow", "Outflow"),
                data_units = c("", "ft", "cfs", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "KIOW" = ace_station(
                name = "Yakima River near Kiona",
                code = "KIOW",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "MONW" = ace_station(
                name = "Monitor",
                code = "MONW",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "NACW" = ace_station(
                name = "Naches River near Naches",
                code = "NACW",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "NITW" = ace_station(
                name = "Similkameen River near Nighthawk",
                code = "NITW",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "OKNW" = ace_station(
                name = "Okanogan near Oroville",
                code = "OKNW",
                project = "EWA",
                data_columns = c("Time", "Stage"),
                data_units = c("", "ft"),
                depths = c(),
                data_skiprows = 5
            ),
            "OKGW" = ace_station(
                name = "Osoyoos Lake near Oroville",
                code = "OKGW",
                project = "EWA",
                data_columns = c("Time", "ElevForebay"),
                data_units = c("", "ft"),
                depths = c(),
                data_skiprows = 5
            ),
            "PARW" = ace_station(
                name = "Yakima River near Parker",
                code = "PARW",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "PATW" = ace_station(
                name = "Methow River at Pateros",
                code = "PATW",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "PESW" = ace_station(
                name = "Wenatchee River at Peshastin",
                code = "PESW",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow", "Precipitation"),
                data_units = c("", "ft", "cfs", "in"),
                depths = c(),
                data_skiprows = 5
            ),
            "SPOW" = ace_station(
                name = "Spokane River at Spokane",
                code = "SPOW",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "CLDI" = ace_station(
                name = "St. Joe River at Calder",
                code = "CLDI",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow", "Precipitation"),
                data_units = c("", "ft", "cfs", "in"),
                depths = c(),
                data_skiprows = 5
            ),
            "STHW" = ace_station(
                name = "Stehekin River at Stehekin",
                code = "STHW",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "TONW" = ace_station(
                name = "Okanogan River near Tonasket",
                code = "TONW",
                project = "EWA",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            )
        )
    ),
    "FLT" = ace_project(
        name = "Flathead and Clark Fork Rivers",
        code = "FLT",
        stations = list(
            "CAB" = ace_station(
                name = "Cabinet Gorge",
                code = "CAB",
                project = "FLT",
                data_columns = c("Time", "ElevForebay", "Discharge"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "CFMM" = ace_station(
                name = "Flathead near Columbia Falls",
                code = "CFMM",
                project = "FLT",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "HGH" = ace_station(
                name = "Hungry Horse Dam and Reservoir",
                code = "HGH",
                project = "FLT",
                data_columns = c("Time", "ElevForebay", "Inflow", "Outflow"),
                data_units = c("", "ft", "cfs", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "KER" = ace_station(
                name = "Selis, Ksanka and Qlispe Dam (formerly Kerr)",
                code = "KER",
                project = "FLT",
                data_columns = c("Time", "ElevForebay", "Outflow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "ABOM" = ace_station(
                name = "Clark Fork River above Missoula",
                code = "ABOM",
                project = "FLT",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "BELM" = ace_station(
                name = "Clark Fork River below Missoula",
                code = "BELM",
                project = "FLT",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "NOX" = ace_station(
                name = "Noxon Rapids",
                code = "NOX",
                project = "FLT",
                data_columns = c("Time", "ElevForebay", "Discharge"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "SRGM" = ace_station(
                name = "Clark Fork River at St. Regis",
                code = "SRGM",
                project = "FLT",
                data_columns = c("Time", "Stage", "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            ),
            "TOM" = ace_station(
                name = "Thompson Falls",
                code = "TOM",
                project = "FLT",
                data_columns = c("Time", "Flow"),
                data_units = c("", "cfs"),
                depths = c(),
                data_skiprows = 5
            )
        )
    ),
    "GRN" = ace_project(
        name = "Green River Basin",
        code = "GRN",
        stations = list()
    ),
    "KOT" = ace_project(
        name = "Kootenai River Basin",
        code = "KOT",
        stations = list()
    ),
    "LKW" = ace_project(
        name = "Lake Washington",
        code = "LKW",
        stations = list(
            "BBLW" = ace_station(
                name = "Ballard Bridge",
                code = "BBLW",
                project = "LKW",
                data_columns = c("Time",
                                 "SalinityA",
                                 "SalinityB",
                                 "SalinityC",
                                 "TemperatureA",
                                 "TemperatureB",
                                 "TemperatureC"),
                data_units = c("", "g/L", "g/L", "g/L", "F", "F", "F"),
                depths = c("A" = 11, "B" = 21, "C" = 32),
                data_skiprows = 5
            ),
            "FBLW" = ace_station(
                name = "Fremont Bridge",
                code = "FBLW",
                project = "LKW",
                data_columns = c("Time",
                                 "SalinityA",
                                 "SalinityB",
                                 "SalinityC",
                                 "TemperatureA",
                                 "TemperatureB",
                                 "TemperatureC"),
                data_units = c("", "g/L", "g/L", "g/L", "F", "F", "F"),
                depths = c("A" = 18, "B" = 31, "C" = 40),
                data_skiprows = 5
            ),
            "UBLW" = ace_station(
                name = "University Bridge",
                code = "UBLW",
                project = "LKW",
                data_columns = c("Time",
                                 "SalinityA",
                                 "SalinityB",
                                 "SalinityC",
                                 "TemperatureA",
                                 "TemperatureB",
                                 "TemperatureC"),
                data_units = c("", "g/L", "g/L", "g/L", "F", "F", "F"),
                depths = c("A" = 8, "B" = 21, "C" = 35),
                data_skiprows = 5
            ),
            "GWLW" = ace_station(
                name = "Gas Works Park",
                code = "GWLW",
                project = "LKW",
                data_columns = c("Time",
                                 "SalinityA",
                                 "SalinityB",
                                 "SalinityC",
                                 "SalinityD",
                                 "TemperatureA",
                                 "TemperatureB",
                                 "TemperatureC",
                                 "TemperatureD"),
                data_units = c("", "g/L", "g/L", "g/L", "g/L", "F", "F", "F", "F"),
                depths = c("A" = 5, "B" = 14, "C" = 29, "D" = 44),
                data_skiprows = 5
            ),
            "LLLW" = ace_station(
                name = "Large Lock",
                code = "LLLW",
                project = "LKW",
                data_columns = c("Time",
                                 "SalinityA",
                                 "SalinityB",
                                 "SalinityC",
                                 "SalinityD",
                                 "TemperatureA",
                                 "TemperatureB",
                                 "TemperatureC",
                                 "TemperatureD"),
                data_units = c("", "g/L", "g/L", "g/L", "g/L", "F", "F", "F", "F"),
                depths = c("A" = 18, "B" = 28, "C" = 36, "D" = 43),
                data_skiprows = 5
            ),
            "FISH2" = ace_station(
                name = "Fish Ladder",
                code = "FISH2",
                project = "LKW",
                data_columns = c("Time",
                                 "Conductivity",
                                 "Salinity",
                                 "Temperature",
                                 "FishUp",
                                 "FishDn"),
                data_units = c("", "umho/cm", "g/L", "F", "", ""),
                depths = c(),
                data_skiprows = 6
            ),
            "BTHS" = ace_station(
                name = "Locks Boathouse",
                code = "BTHS",
                project = "LKW",
                data_columns = c("Time",
                                 "Elevation"),
                data_units = c("", "ft"),
                depths = c(),
                data_skiprows = 6
            ),
            "KNMR" = ace_station(
                name = "Kenmore Gage",
                code = "KNMR",
                project = "LKW",
                data_columns = c("Time",
                                 "Elevation"),
                data_units = c("", "ft"),
                depths = c(),
                data_skiprows = 5
            ),
            "RNTW" = ace_station(
                name = "Cedar River at Renton",
                code = "RNTW",
                project = "LKW",
                data_columns = c("Time",
                                 "Stage",
                                 "Flow"),
                data_units = c("", "ft", "cfs"),
                depths = c(),
                data_skiprows = 5
            )
        )
    ),
    "PND" = ace_project(
        name = "Pend Oreille River Basin",
        code = "PND",
        stations = list()
    ),
    "PUY" = ace_project(
        name = "Puyallup River Basin",
        code = "PUY",
        stations = list()
    ),
    "SKG" = ace_project(
        name = "Skagit River Basin",
        code = "SKG",
        stations = list()
    )
)

devtools::use_data(ace_projects, internal = TRUE, overwrite = TRUE)
rm(ace_projects)
