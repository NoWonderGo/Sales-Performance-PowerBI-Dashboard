-- 10. What are the top 3 products within each Category based on sales?


WITH product_sales AS (
SELECT Category, Product_name, SUM(Sales) AS Total_Sales
FROM salesPerformance
GROUP BY Category, Product_name
),
ranked_products AS (
SELECT Category, Product_name, Total_Sales,
ROW_NUMBER() OVER (
PARTITION BY Category ORDER BY Total_Sales DESC
) AS Product_Rank
FROM product_sales
)
SELECT Category, Product_name, Total_Sales, Product_Rank
FROM ranked_products
WHERE Product_Rank <= 3
ORDER BY Category, Product_Rank;
