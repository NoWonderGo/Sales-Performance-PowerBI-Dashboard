-- 4. Which category has the highest average sales per order?


SELECT Category,
ROUND(SUM(Sales) / COUNT(DISTINCT Order_ID),2) AS Avg_Sales_Per_Order
FROM salesPerformance
GROUP BY Category
ORDER BY Avg_Sales_Per_Order DESC
LIMIT 1;