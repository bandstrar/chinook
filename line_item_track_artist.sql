select
	il.InvoiceLineId,
	t.Name,
	ar.Name
from InvoiceLine il
	join Track t
		on il.TrackId = t.TrackId
	join Album a
		on t.AlbumId = a.AlbumId
	join Artist ar
		on a.ArtistId = ar.ArtistId
	order by InvoiceLineId