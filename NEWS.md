# acewater NEXT

* Added `autoplot.ace_conditions` and `autoplot.ace_station` to create plots using ggplot2


# acewater 0.4.0 (2017-06-09)

* Added stations for all Seattle District projects: Chehalis River Basin, Eastern Washington Rivers, Flathead and Clark Fork Rivers, Green River Basin, Kootenai River Basin, Pend Oreille River Basin, Puyallup River Basin, and Skagit River Basin
* Updated `ace_station` structure
    * Added `data_units` field to `ace_station` for measurement units
    * Added `project` field to `ace_station` to store station's project
    * Added `info_url` field for adding links to external information
    * Added `latitude` and `longitude` fields for mapping purposes [#5]
* Added `ace_project` structure for storing projects (each has multiple stations)
* Added `find_project` function to find the project (code) associated with a given monitoring station
* `get_station` now takes a project code as argument
* Updated `get_water_conditions`
    * `get_water_conditions.character` now takes a project code as argument
    * Project/basin now included in result tibble
    * Additional attributres like project/station name and retrieval time added [#6]
    * Added `ace_conditions` class to allow for future options like `plot.ace_conditions`
* Removed `station_name` function
* Internal data updates
    * Added values for `data_units` and `project` to existing stations
    * Added `ace_projects` data set, containing information about different basins/projects
    * Removed `ace_stations` (after renaming it from stations)
    * File moved to `ace_projects`
* README updates
    * Added Grand Coulee Dam example
    * Updated examples in README to include project codes




# acewater 0.3.0 (2017-06-07)

* Now works with all stations in the Lake Washington Ship Canal
* `get_water_conditions` can now work with more types of measurements (just using the data_columns names)
* `get_water_conditions` now returns Station code as a factor
* Added more stations to stations data set: BTHS, FISH2, KNMR, RNTW
* Added `data_skiprows` attribute to `ace_station` to specify number of rows to skip at the beginning of the file


# acewater 0.2.1 (2017-06-07)

* Added `ace_station` constructor
    * stations data is now a list of ace_station objects
    * `get_station` now returns object from station data, no longer constructing an object itself
    * `get_water_conditions` now works with `ace_station` objects
* `get_water_conditions` now a generic function
    * Supports for specifying station as character vector (e.g. "FBLW") or `ace_station` object


# acewater 0.2.0 (2017-06-07)

* get_water_conditions now takes station code instead of station object
* Station data now includes information about columns in result, which will make it easy to accomodate more station data formats
* Station data can now include a url in case a station's url doesn't follow the usual scheme
* Moved station data for stations.R to data-raw/data_stations.R
* Station data are know stored as package data (stations)
* `get_station` now returns an `ace_station` object
* Added `station_name` helper function
* Added basic unit testing framework


# acewater 0.1.0

* Initial version
* Added a `NEWS.md` file to track changes to the package.
