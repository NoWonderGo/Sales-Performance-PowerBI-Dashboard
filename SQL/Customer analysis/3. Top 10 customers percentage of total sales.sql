-- 3. What percentage of total sales comes from the top 10 customers?


WITH customer_sales AS (
SELECT Customer_ID, Customer_name,
SUM(Sales) AS Total_Sales
FROM salesPerformance
GROUP BY Customer_ID, Customer_name
),
top_10 AS (
SELECT *
FROM customer_sales
ORDER BY Total_Sales DESC
LIMIT 10
)
SELECT ROUND(
SUM(Total_Sales) * 100/(SELECT SUM(Sales) FROM salesPerformance),2) 
AS Top_10_Sales_Percentage
FROM top_10;

---------------------------------------------------------------------------

select round(sum(total_sales)*100/(select sum(sales) from salesPerformance),2) as top_10_sales_percentage
from(select sum(sales) as total_sales
from salesPerformance
group by customer_ID
order by total_sales desc limit 10);