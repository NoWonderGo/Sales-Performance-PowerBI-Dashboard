-- 1. Which 10 states have the highest sales?

SELECT State,
SUM(Sales) AS Total_Sales
FROM salesPerformance
GROUP BY State
ORDER BY Total_Sales DESC
LIMIT 10;
