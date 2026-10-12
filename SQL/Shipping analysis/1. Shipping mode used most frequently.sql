-- 1. Which shipping mode is used most frequently?


SELECT Ship_Mode,
COUNT(*) AS Number_of_Orders
FROM salesPerformance
GROUP BY Ship_Mode
ORDER BY Number_of_Orders DESC
LIMIT 1;