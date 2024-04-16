/*   DATA EXPLORATION   */

--Check for NULL VALUES

SELECT COUNT(*) - COUNT(ride_id) ride_id,
 COUNT(*) - COUNT(rideable_type) rideable_type,
 COUNT(*) - COUNT(started_at) started_at,
 COUNT(*) - COUNT(ended_at) ended_at,
 COUNT(*) - COUNT(start_station_name) start_station_name,
 COUNT(*) - COUNT(start_station_id) start_station_id,
 COUNT(*) - COUNT(end_station_name) end_station_name,
 COUNT(*) - COUNT(end_station_id) end_station_id,
 COUNT(*) - COUNT(start_lat) start_lat,
 COUNT(*) - COUNT(start_lng) start_lng,
 COUNT(*) - COUNT(end_lat) end_lat,
 COUNT(*) - COUNT(end_lng) end_lng,
 COUNT(*) - COUNT(member_casual) member_casual
 FROM `my-project-bicycle-412421.Biycyle.TRIPS`;

--REMOVE NULL VALUES: started_at, ended_at,start_station_name, start_station_id,end_station_name,end_station_id, end_lat, end_lng

SELECT * EXCEPT (started_at, ended_at,start_station_name, start_station_id,end_station_name,end_station_id, end_lat, end_lng)
FROM `my-project-bicycle-412421.Biycyle.TRIPS`;

--Number of Trips for each rideable_type
SELECT DISTINCT rideable_type, COUNT(rideable_type) AS no_of_trips
FROM `my-project-bicycle-412421.Biycyle.TRIPS`
GROUP BY rideable_type;

--357 rows that are longers than a day
SELECT COUNT(*) AS longer_than_a_day
FROM `my-project-bicycle-412421.Biycyle.TRIPS`
WHERE (
  EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
  EXTRACT(MINUTE FROM (ended_at - started_at)) +
  EXTRACT(SECOND FROM (ended_at - started_at)) / 60) >= 1440; 

-- 1 row was less than a minute
SELECT COUNT(*) AS less_than_a_minute
FROM `my-project-bicycle-412421.Biycyle.TRIPS`
WHERE (
  EXTRACT(HOUR FROM (ended_at - started_at)) * 60 +
  EXTRACT(MINUTE FROM (ended_at - started_at)) +
  EXTRACT(SECOND FROM (ended_at - started_at)) / 60) <= 1; 