-- 9. What is the average number of days between Order Date and Ship Date for each Ship Mode?

SELECT Ship_Mode,
ROUND(avg(Ship_Date - Order_Date),2) AS Avg_Shipping_Days
FROM salesPerformance
GROUP BY Ship_Mode
ORDER BY Avg_Shipping_Days;