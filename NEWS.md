# acewater 0.2.0

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
