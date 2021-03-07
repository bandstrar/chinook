select t.Name, SUM(il.Quantity) as Purchase_Count
from Track t
	join InvoiceLine il
		on t.TrackId = il.TrackId
	join Invoice i
		on il.InvoiceId = i.InvoiceId
where Year(i.InvoiceDate) = 2013
GROUP BY t.Name
having SUM(il.Quantity) = 2
order by Purchase_Count Desc