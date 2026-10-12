-- 3. Which region contributes the largest percentage of total sales?


SELECT Region,
SUM(Sales) AS Total_Sales,
ROUND(SUM(Sales) * 100 / (SELECT SUM(Sales) FROM salesPerformance),2) 
AS Percentage_of_Total_Sales
FROM salesPerformance
GROUP BY Region
ORDER BY Percentage_of_Total_Sales DESC;