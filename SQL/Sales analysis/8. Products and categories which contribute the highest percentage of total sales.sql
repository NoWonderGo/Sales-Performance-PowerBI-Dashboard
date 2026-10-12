-- 8. Which products/categories contribute the highest percentage of total sales?

WITH product_sales AS (
SELECT Category, Product_name, SUM(Sales) AS Product_Sales
FROM salesPerformance
GROUP BY Category, Product_name
)
SELECT Category, Product_name, Product_Sales,
ROUND(Product_Sales * 100 / SUM(Product_Sales) OVER (), 2)
AS Percentage_of_Total_Sales
FROM product_sales
ORDER BY Percentage_of_Total_Sales DESC Limit 10;