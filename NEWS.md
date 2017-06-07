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
