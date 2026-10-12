-- 2. Which cities generate the most sales?

SELECT City,
SUM(Sales) AS Total_Sales
FROM salesPerformance
GROUP BY City
ORDER BY Total_Sales DESC;