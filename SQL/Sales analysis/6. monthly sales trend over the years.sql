-- 6. What is the monthly sales trend over the years?
select * from salesPerformance;

select to_char(order_date, 'YYYY-MM') as sales_month,
Round(sum(sales),2) as total_sales
from salesPerformance
group by DATE_TRUNC('month', order_date), to_char(order_date, 'YYYY-MM')
order by DATE_TRUNC('month', order_date);
