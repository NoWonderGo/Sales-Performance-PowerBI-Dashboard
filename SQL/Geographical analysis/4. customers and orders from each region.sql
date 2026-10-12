-- 4. How many customers/orders come from each region?

SELECT Region,
COUNT(DISTINCT Customer_ID) AS Unique_Customers,
COUNT(DISTINCT Order_ID) AS Total_Orders
FROM salesPerformance
GROUP BY Region
ORDER BY Region;