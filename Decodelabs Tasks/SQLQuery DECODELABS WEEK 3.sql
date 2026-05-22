USE decodelabs3;

SELECT Product,
Round(SUM([Quantity]*[UnitPrice]),0)AS Total_Revenue,
COUNT([OrderID])as Total_Orders
from[dbo].[Dataset for Data Analytics (1)]
group by[Product]
order by Total_Revenue desc;

SELECT PRODUCT, avg([quantity]) as Average_Qty_Per_Order
from[dbo].[Dataset for Data Analytics (1)]
where[unitprice]>300
group by product
order by Average_Qty_Per_Order DESC;





/*DATA ANALYTICS PROJECT INSIGHTS
. Top revenue generator: Chair is the product with the highest total revenue
. Highest order volume: Printer hasa the highest total order,exceeding chair with 3 orders
. On Average, for products with unitprice over 300,customers buy an average quantity of 3 units per order for chairs,laptop, printer
  and monitor, and an average quantity of 2 units per order for tablet, phone and desk.*/ 
