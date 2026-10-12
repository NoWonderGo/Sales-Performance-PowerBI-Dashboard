-- 4. Which states generated the highest and lowest sales?

SELECT State, SUM(Sales) AS Total_Sales
FROM salesPerformance
GROUP BY State
ORDER BY Total_Sales DESC;