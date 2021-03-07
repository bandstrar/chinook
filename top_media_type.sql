select Top 1 mt.Name, SUM(il.Quantity) as Purchase_Count
from Track t
	join InvoiceLine il
		on t.TrackId = il.TrackId
	join Invoice i
		on il.InvoiceId = i.InvoiceId
	join MediaType mt
		on t.MediaTypeId = mt.MediaTypeId
GROUP BY mt.Name
order by Purchase_Count Desc