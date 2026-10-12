-- 2. Which customers generated the highest revenue?

SELECT Customer_ID, Customer_name,
SUM(Sales) AS Total_Revenue
FROM salesPerformance
GROUP BY Customer_ID, Customer_name
ORDER BY Total_Revenue DESC;

