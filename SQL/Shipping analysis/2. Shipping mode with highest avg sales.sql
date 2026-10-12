-- 2. Which shipping mode has the highest average sales?

SELECT Ship_Mode,
ROUND(AVG(Sales), 2) AS Average_Sales
FROM salesPerformance
GROUP BY Ship_Mode
ORDER BY Average_Sales DESC
LIMIT 1;
