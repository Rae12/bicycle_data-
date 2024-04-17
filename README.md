# Overview

Currently working on my Case Study project about bicycle data to find out how we can influence casual riders to become annual memberships for company growth. Stakeholders, Lily Moreno whom is over our marketing department & the executive team of approval are  wanting to know three questions?
- How do annual members and casual riders use Cyclistic bikes differently? 

- Why would casual riders buy Cyclistic annual memberships? 

- How can Clyclistic use digital media to influence casual riders to become members?

# Quick Links: 
Data Source: [.divvy-tripdata.csv](https://github.com/Rae12/bicycle_data-/files/13971348/default.tripdata.csv) [accessed on 12/1/23]
1.Data Exploration.sql
2.
# Prepare 

Data Source of Cyclistic’s historical trip data being used to identify trends from 11/13/23 - 12/5/23 that can be downloaded from [divvy-tripdata](https://github.com/Rae12/bicycle_data-/files/13971348/default.tripdata.csv). This data is available by Motivate Inc. & under this [license](https://www.divvybikes.com/data-license-agreement). This is public data that you can use to explore how different customer types are using Cyclistic bikes.  

Data Organization 

Only one file will be use that includes one month of information such as ride id, bike type, start time, end time, start station, end station, start location, end location, & whether the rider is casual or member. The corresonding column names are ride_id, rideable_type, started_at, ended_at, start_station_name, start_station_id, end_station_name, end_station_id, start_lat, start_lng, end_lat, end_lng, member_casual. 

![Columns](https://github.com/Rae12/bicycle_data-/assets/43325274/5d74a3d4-8979-4916-8d27-01334935f8f2)

# Process 

Cleaning & Transformation 

After download of dataset the use of GoogleSheets for preparation of data such as checking data for errors & transformation. 

Since there is a start_at & end_at indicating for the time of riding, I created a new column called “ride_length” to calculate the length of the ride then formatted the cells to equate to time

    =(started_at – ended_at)

![ride_length](https://github.com/Rae12/bicycle_data-/assets/43325274/ed0d6143-50a5-4f7f-8849-6bed9d0abbd1)

Also create a new column called day_of_week to calculate the day of the week that each ride started, 

     =WEEKDAY(C2,1) 1=Sunday & 7=Saturday

![day_of_week](https://github.com/Rae12/bicycle_data-/assets/43325274/b79490f7-d6a0-4de8-a5ff-06611a047ac1)

Use of the SPLIT function to split the TIMESTAMPS for started_at & ended_at columns.

    =SPLIT(D2, " ")
    
![SPLIT](https://github.com/Rae12/bicycle_data-/assets/43325274/5e561963-3f3a-4a73-935e-342441dc494b)

During cleaning process there are two columns end_station_name & end_station_id have null values in the dataset that needed to be removed. 

Pivot Tables

 1. Find out what is the average time that riders are consume. 

  a. Create a column called meanride_legnth to find out the average time 
![Average ride_length pvt](https://github.com/Rae12/bicycle_data-/assets/43325274/21fc1909-63ed-441e-b21d-4bcbd9572721)


 2. Find out the maximum time that riders consume
    
   a. Create a column called maxride_length to find out the maximum time 
![Max ride_length pvt](https://github.com/Rae12/bicycle_data-/assets/43325274/94c038b9-a07a-40dc-bd82-40bf15a4d08d)

 3.Find out the most frequent time riders consume. 

   a. Create a column called moderide_length to find out the most frequent 
  


  
