select
	il.InvoiceLineId,
	t.Name
from InvoiceLine il
	join Track t
		on il.TrackId = t.TrackId
	order by InvoiceLineId