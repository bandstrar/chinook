select Top 5 t.Name, SUM(il.Quantity) as Purchase_Count
from Track t
	join InvoiceLine il
		on t.TrackId = il.TrackId
	join Invoice i
		on il.InvoiceId = i.InvoiceId
GROUP BY t.Name
order by Purchase_Count Desc