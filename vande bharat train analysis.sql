CREATE DATABASE railway;

USE railway;

-- 1. Total Number of Records
SELECT COUNT(*) AS Total_Records 
FROM vande_bharat;

-- 2. Average Speed of Trains
SELECT AVG(Speed) AS Avg_Speed 
FROM vande_bharat;

-- 3. Minimum and Maximum Speed
SELECT MIN(Speed) AS Min_Speed, MAX(Speed) AS Max_Speed 
FROM vande_bharat;

-- 4. Number of Unique Operators
SELECT COUNT(DISTINCT Operator) AS Unique_Operators 
FROM vande_bharat;

-- 5. Trains with the Highest Speed
SELECT Train_Name , Speed 
FROM vande_bharat 
ORDER BY Speed DESC LIMIT 5;

-- 6. Trains with the Lowest Speed
SELECT Train_Name, Speed 
FROM vande_bharat 
ORDER BY Speed ASC LIMIT 5;

-- 7. Average Distance by Operator
SELECT Operator, AVG(Distance) AS Avg_Distance 
FROM vande_bharat 
GROUP BY Operator;

-- 8. Total Distance Traveled by Each Train
SELECT Train_Name, SUM(Distance) AS Total_Distance 
FROM vande_bharat 
GROUP BY Train_Name;

-- 9. Trains with the Highest Average Occupancy
SELECT Train_Name, Average_Occupancy 
FROM vande_bharat 
ORDER BY Average_Occupancy DESC LIMIT 5;

-- 10. Average Travel Time by Train Number
SELECT Train_Number, AVG(Travel_Time) AS Avg_Travel_Time 
FROM vande_bharat 
GROUP BY Train_Number;

-- 11. List of Trains with Speed Above Average
SELECT Train_Name, Speed 
FROM vande_bharat 
WHERE Speed > (SELECT AVG(Speed) FROM vande_bharat);

-- 12. Frequency Distribution of Trains
SELECT Frequency, COUNT(*) AS Count 
FROM vande_bharat 
GROUP BY Frequency;

-- 13. Average Speed by Train Type
SELECT Train_Name, AVG(Speed) AS Avg_Speed 
FROM vande_bharat 
GROUP BY Train_Name;

-- 14. Inauguration Date Analysis
SELECT Inauguration, COUNT(*) AS Count 
FROM vande_bharat 
GROUP BY Inauguration;

-- 15. Average Speed by Color
SELECT Color, AVG(Speed) AS Avg_Speed 
FROM vande_bharat 
GROUP BY Color;

-- 16. Number of Cars vs. Average Speed
SELECT No_of_Cars, AVG(Speed) AS Avg_Speed 
FROM vande_bharat 
GROUP BY No_of_Cars;

-- 17. Trains by Originating and Terminal Cities 
SELECT Originating_City, Terminal_City, COUNT(*) AS Train_Count 
FROM vande_bharat 
GROUP BY Originating_City, Terminal_City;

-- 18. Performance Analysis by Route
SELECT Originating_City, Terminal_City, AVG(Speed) AS Avg_Speed, AVG(Travel_Time) AS Avg_Travel_Time
FROM vande_bharat
GROUP BY Originating_City, Terminal_City;

-- 19. Speed Trends Over Inauguration Dates
SELECT Inauguration, AVG(Speed) AS Avg_Speed
FROM vande_bharat
GROUP BY Inauguration
ORDER BY Inauguration;

-- 20. Distance and Travel Time Analysis
SELECT Distance, Travel_Time, AVG(Speed) AS Avg_Speed
FROM vande_bharat
GROUP BY Distance, Travel_Time;

-- 21. Train Performance Comparison by Operator
SELECT Operator, AVG(Speed) AS Avg_Speed, AVG(Average_Speed) AS Avg_Avg_Speed, AVG(Travel_Time) AS Avg_Travel_Time
FROM vande_bharat
GROUP BY Operator;

-- 22. Occupancy Analysis by Train Number
SELECT Train_Number, AVG(Average_Occupancy) AS Avg_Occupancy
FROM vande_bharat
GROUP BY Train_Number;

-- 23. Top 5 Trains by Distance
SELECT Train_Name, Distance 
FROM vande_bharat 
ORDER BY Distance DESC LIMIT 5;

-- 24. Trains with Longest Travel Time
SELECT Train_Name, Travel_Time 
FROM vande_bharat 
ORDER BY Travel_Time DESC LIMIT 5;

-- 25. Average Speed vs. Number of Cars
SELECT No_of_Cars, AVG(Speed) AS Avg_Speed
FROM vande_bharat
GROUP BY No_of_Cars;

-- 26. Trains by Terminal Station
SELECT Terminal_Station, COUNT(*) AS Train_Count 
FROM vande_bharat 
GROUP BY Terminal_Station;

-- 27. Speed Analysis by Train Name
SELECT Train_Name, AVG(Speed) AS Avg_Speed, MAX(Speed) AS Max_Speed, MIN(Speed) AS Min_Speed
FROM vande_bharat
GROUP BY Train_Name;

-- 28. Average Occupancy vs. Distance
SELECT Distance, AVG(Average_Occupancy) AS Avg_Occupancy
FROM vande_bharat
GROUP BY Distance;

-- 29. Comparison of Average Speed and Average Occupancy
SELECT Train_Name, AVG(Speed) AS Avg_Speed, AVG(Average_Occupancy) AS Avg_Occupancy
FROM vande_bharat
GROUP BY Train_Name;

-- 30. Trains with High Speed and Low Travel Time
SELECT Train_Name, Speed, Travel_Time
FROM vande_bharat
WHERE Speed > (SELECT AVG(Speed) FROM vande_bharat) AND Travel_Time < (SELECT AVG(Travel_Time) FROM vande_bharat);

-- 31. Operator Performance Analysis
SELECT Operator, AVG(Speed) AS Avg_Speed, AVG(Average_Speed) AS Avg_Avg_Speed, AVG(Travel_Time) AS Avg_Travel_Time
FROM vande_bharat
GROUP BY Operator;

-- 32. Train Analysis by Number of Cars
SELECT No_of_Cars, AVG(Speed) AS Avg_Speed, AVG(Travel_Time) AS Avg_Travel_Time, AVG(Average_Occupancy) AS Avg_Occupancy
FROM vande_bharat
GROUP BY No_of_Cars;

-- 33. Inauguration Date and Performance Metrics
SELECT Inauguration, AVG(Speed) AS Avg_Speed, AVG(Travel_Time) AS Avg_Travel_Time
FROM vande_bharat
GROUP BY Inauguration;

