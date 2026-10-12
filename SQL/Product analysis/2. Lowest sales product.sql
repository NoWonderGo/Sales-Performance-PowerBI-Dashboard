-- 2.Which products have generated the lowest sales?

SELECT Product_name,
SUM(Sales) AS Total_Sales
FROM salesPerformance
GROUP BY Product_name
ORDER BY Total_Sales ASC;
