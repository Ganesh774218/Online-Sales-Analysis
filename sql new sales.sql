create database Sales;
use Sales;
select * from new_sales_data;


-- 1)Find out the Distinct Countries
  select distinct country from new_sales_data;

-- 2)Calculate total shipping sales
  select sum(shippingcost) as TotalRevenue from new_sales_data;
  
-- 3)Calculate Total quantity sold per category
select category,sum(quantity) as total_quantity from new_sales_data group by category;

-- 4)Obtain Top 10 products by unit price
select description,unitprice from new_sales_data order by unitprice desc limit 10;

-- 5)Find the Total revenue per product
select Description, sum(Quantity * UnitPrice * (1- Discount)) as total_revenu from New_sales_data group by Description;

-- 6)Find the Number of returns per country
select description, count(*) as returns from New_sales_data where ReturnStatus = 'Returned' group by description;

-- 7)Retrieve number of returns per category
select category,count(*) as Total_Returns from new_sales_data where returnstatus="returned" group by category;

-- 8)Obtain Average shippingcost by provider
select shipmentprovider, avg(shippingcost) as Average_shipping_cost from new_sales_data group by shipmentprovider;

-- 9)Find High priority orders
select * from new_sales_data where orderpriority="High";

-- 10)Obtain sales by payment method
select paymentmethod,count(*) as Number_of_sales_payment_method from new_sales_data group by paymentmethod;

-- 11)Find total revenue generating countries
select Country, sum(Quantity * UnitPrice * (1- Discount)) as Revenue from New_sales_data group by Country order by revenue desc limit 3;

-- 12)top revenue generating category
select category,sum(quantity * unitprice * (1-discount)) as Category_revenue from new_sales_data group by category order by Category_revenue desc;

-- 13)Online and in store revenue comparison
select SalesChannel, sum(Quantity * UnitPrice * (1- Discount)) as revenue from New_sales_data group by SalesChannel;

-- 14)Monthly sales volume trend
select date_format(InvoiceDate, '%Y-%m') as Month, sum(Quantity) as total_quantity from New_sales_data group by Month order by Month;

-- 15)Most sold product per category
select Country, Description, total_qty from(select Country, Description, sum(Quantity) as total_qty,
Rank() over (partition by Country order by sum(Quantity) desc) as ranked from New_sales_data group by Country, Description) t where ranked=1;

-- 16)Orders and shipping per warehouse 
select WarehouseLocation, count(*) as total_orders, sum(ShippingCost) as total_shipping_cost from New_sales_data group by WarehouseLocation;

-- 17)top 5 most returned products
select Description, count(*) as return_count from New_sales_data where ReturnStatus='Returned' group by Description order by return_count desc limit 5;
 
 -- 18)revenue by country and sales
select Country,SalesChannel,sum(Quantity * UnitPrice * (1-Discount)) as revenue from New_sales_data group by Country, SalesChannel;

-- 19)Max discount per product
select Description, max(Discount) as max_discount from New_sales_data group by Description;

-- 20)Total Quantity sold for each product
select description,sum(quantity) as Total_quantity_sold from new_sales_data group by description;

-- 21)Sales record from australia country
select invoiceno,description,quantity,discount,unitprice,country from new_sales_data where country="australia";

-- 22)calculate total revenue per sale before discount
select invoiceno,description,quantity,unitprice,(quantity*unitprice) as total_revenue_per_sale from  new_sales_data;

-- 23)total sales by country and channel
select country,saleschannel, sum(quantity * unitprice) as total_sales_country_saleschannel from new_sales_data group by country,saleschannel order by total_sales_country_saleschannel;

-- 24)identify return items and their quantity
select description,sum(quantity) as total_returned from new_sales_data where returnstatus="returned" group by description having total_returned>0;

-- 25)calculate revenue after discount
select invoiceno,description,quantity,unitprice,discount, (quantity * unitprice * (1-discount)) as Revenue_after_discount
from new_sales_data; 

-- 26)Rank products by total quantity sold within each country
select country,description,sum(quantity) as total_quantity_sold_in_each_country,
rank() over (partition by country order by sum(quantity)desc)as ranked from new_sales_data group  by country,description; 


-- 27)compare sales by shipment provider
select shipmentprovider,count(*) as Transaction_count, sum(quantity * unitprice) as Totalsales, avg(shippingcost) as Avg_shipping_cost
from new_sales_data group by shipmentprovider order by totalsales desc;

-- 28) obtain customers with multiple purchases
select customerID,count(distinct invoiceno) as purchasecount from new_sales_data group by customerID having purchasecount>1 order by purchasecount desc;

-- 29) top warehouse locations by sales volume
select warehouselocation,sum(quantity) as totalquantity,sum(quantity * unitprice*(1-discount)) as totalrevenue from new_sales_data
group by warehouselocation order by totalrevenue desc;

-- 30)Analyze sales performance of day of the week
select dayname(invoicedate) as dayoftheweek, count(*) as transactioncount,sum(quantity * unitprice*(1-discount)) as total_revenue 
from new_sales_data group by dayoftheweek order by field(dayoftheweek,"Monday","tuesday","wednesday","thursday","friday","saturday","sunday");
