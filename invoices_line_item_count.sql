select i.*, (select Count(il.InvoiceLineId)
				from InvoiceLine il
				where il.InvoiceId = i.InvoiceId) as Number_Of_Line_Items
from Invoice i