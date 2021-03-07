select
	Year(InvoiceDate) as SalesYear,
	sum(Total) as TotalSales
from Invoice i
	where Year(InvoiceDate) = 2009 or Year(InvoiceDate) = 2011
group by Year(InvoiceDate)