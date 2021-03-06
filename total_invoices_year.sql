select
	count(*)
from Invoice i
	where InvoiceDate like '%2009%' or InvoiceDate like '%2011%'