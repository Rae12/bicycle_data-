*/  DATA CLEANING   */

--To modify the dataset in R Studio

--Removal of Columns
View(Case_Study_TRIPS)
> Case_Study_TRIPS <- Case_Study_TRIPS [, -c(3,4)]
> Case_Study_TRIPS <- Case_Study_TRIPS [, -c(9,10,13,14)]

--Save modified dataset in R Studio

write.csv(TRIPS, "modified_TRIPS_data.csv", row.names = FALSE)
