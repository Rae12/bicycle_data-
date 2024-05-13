/*   DATA ANALYSIS  */

-- Classic_bike that rode 11-01-2023: 4333

SELECT COUNT(started_date) started_date,
COUNT(rideable_type)rideable_type 
FROM `my-project-bicycle-412421.Biycyle.TRIPS`
WHERE started_date <= "2023-11-01" AND rideable_type = 'classic_bike';

--Classic_bike rode 11-30-2023: 139313

SELECT COUNT(started_date) started_date,
COUNT(rideable_type)rideable_type 
FROM `my-project-bicycle-412421.Biycyle.TRIPS`
WHERE started_date <= "2023-11-30" AND rideable_type = 'classic_bike';

--riders per week 

SELECT DISTINCT WeekDay, rideable_type, COUNT(WeekDay) AS per_week
FROM `my-project-bicycle-412421.Biycyle.TRIPS`
GROUP BY WeekDay, rideable_type;

--member_casual of number of trips

SELECT DISTINCT member_casual, COUNT(member_casual) AS no_of_trips
FROM `my-project-bicycle-412421.Biycyle.TRIPS`
GROUP BY member_casual;

