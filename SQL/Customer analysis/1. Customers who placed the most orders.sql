-- 1. Which customers placed the most orders?


SELECT Customer_ID, Customer_name,
COUNT(DISTINCT Order_ID) AS Total_Orders
FROM salesPerformance
GROUP BY Customer_ID, Customer_name
ORDER BY Total_Orders DESC;

