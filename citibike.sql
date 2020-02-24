drop table citibike_2019;

-- Create tables for raw data to be loaded into

CREATE TABLE citibike_2019 (
station_id INT PRIMARY KEY,
station_name TEXT,
date_2019 TEXT,
time TEXT	
);


drop table citibike_2020;

CREATE TABLE citibike_2020 (
station_id INT PRIMARY KEY,
station_name TEXT,
date_2020 TEXT,
time TEXT	
);

-- Joins tables
SELECT citibike_2019.station_id, citibike_2019.station_name, citibike_2019.date_2019, citibike_2019.time, citibike_2020.station_id,citibike_2020.station_name,citibike_2020.date_2020,citibike_2020.time
FROM citibike_2019
JOIN citibike_2020
ON citibike_2019.station_id = citibike_2020.station_id;