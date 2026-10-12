-- 4. Which states have the longest average shipping time?

SELECT State,
ROUND(
AVG(DATEDIFF(Ship_Date, Order_Date)), 2
) AS Avg_Shipping_Days
FROM salesPerformance
GROUP BY State
ORDER BY Avg_Shipping_Days DESC;

----------------------------------------------------
SELECT State,
ROUND(AVG(Ship_Date - Order_Date), 2) AS Avg_Shipping_Days
FROM salesPerformance
GROUP BY State
ORDER BY Avg_Shipping_Days DESC;

