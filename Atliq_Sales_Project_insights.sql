
use sales;

-- all the transactions from the chennai 
SELECT * FROM transactions
WHERE market_code = "Mark001";

-- all the transactions in 2020 
select sales.transactions.*,  sales.date.*
from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date 
where sales.date.year=2020;

-- total revenue in 2020 or total sales in 2020
select SUM(sales.transactions.sales_amount)
from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date 
where sales.date.year=2020;

-- total revenue in chennai
select SUM(sales.transactions.sales_amount)
from sales.transactions inner join sales.date on sales.transactions.order_date=sales.date.date 
where sales.date.year=2020 and sales.transactions.market_code="Mark001";

-- distinct product sold in chennai
select distinct product_code from transactions 
WHERE market_code = "Mark001";


