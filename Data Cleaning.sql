*/  DATA CLEANING   */

--To modify the dataset in R Studio

--Removal of Columns
TRIPS.csv <- TRIPS.csv[, -c(7, 8, 11, 12)]

--Save modified dataset in R Studio

write.csv(TRIPS, "modified_TRIPS_data.csv", row.names = FALSE)