-- 2. What are the total sales by Category and Sub-Category?

SELECT Category, Sub_category, SUM(Sales) AS Total_Sales
FROM salesPerformance
GROUP BY Category, Sub_category
ORDER BY Total_Sales DESC;