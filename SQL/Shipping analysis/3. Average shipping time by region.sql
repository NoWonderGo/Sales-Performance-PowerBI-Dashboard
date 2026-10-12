-- 3. What is the average shipping time by region?

SELECT Region,
ROUND(
AVG(DATEDIFF(Ship_Date, Order_Date)), 2
) AS Avg_Shipping_Days
FROM salesPerformance
GROUP BY Region
ORDER BY Avg_Shipping_Days;

------------------------------------------------
SELECT Region,
ROUND(AVG(Ship_Date - Order_Date),2) 
AS Avg_Shipping_Days
FROM salesPerformance
GROUP BY Region
ORDER BY Avg_Shipping_Days;