select
	InvoiceId,
	Count(*) as Line_Items
from InvoiceLine il
	group by InvoiceId