-- 4. How many unique customers are there in each segment?


SELECT Segment,
COUNT(DISTINCT Customer_ID) AS Unique_Customers
FROM salesPerformance
GROUP BY Segment
ORDER BY Unique_Customers DESC;