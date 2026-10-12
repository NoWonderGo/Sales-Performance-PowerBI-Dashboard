-- 3. What are the top 5 products in each region?

WITH product_region_sales AS (
SELECT Region, Product_name, category,
SUM(Sales) AS Total_Sales
FROM salesPerformance
GROUP BY Region, Product_name, category
),
ranked_products AS (
SELECT Region, Product_name, category, Total_Sales,
ROW_NUMBER() OVER (
PARTITION BY Region
ORDER BY Total_Sales DESC
) AS Product_Rank
FROM product_region_sales
)
SELECT Region, Product_name, category, Total_Sales, Product_Rank
FROM ranked_products
WHERE Product_Rank <= 5
ORDER BY Region, Product_Rank;
