-- 1. Which sub-category has the highest sales?

SELECT Sub_category,
SUM(Sales) AS Total_Sales
FROM salesPerformance
GROUP BY Sub_category
ORDER BY Total_Sales DESC
LIMIT 1;