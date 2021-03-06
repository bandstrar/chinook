select
	Year(InvoiceDate) as SalesYear,
	sum(Total) as TotalSales
from Invoice i
	where InvoiceDate like '%2009%' or InvoiceDate like '%2011%'
group by Year(InvoiceDate)