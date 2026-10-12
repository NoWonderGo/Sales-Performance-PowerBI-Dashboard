-- 3. Which 10 products generated the highest sales?

SELECT Product_name, SUM(Sales) AS Total_Sales
FROM salesPerformance
GROUP BY Product_name
ORDER BY Total_Sales DESC
LIMIT 10;