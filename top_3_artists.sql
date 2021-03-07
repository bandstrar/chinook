select Top 3 ar.Name, SUM(il.Quantity) as Purchase_Count
from Track t
	join InvoiceLine il
		on t.TrackId = il.TrackId
	join Invoice i
		on il.InvoiceId = i.InvoiceId
	join Album a
		on t.AlbumId = a.AlbumId
	join Artist ar
		on a.ArtistId = ar.ArtistId
GROUP BY ar.Name
order by Purchase_Count Desc