select 
	FirstName,
	LastName,
	InvoiceId,
	InvoiceDate,
	BillingCountry
from Customer c
	join Invoice i
		on c.CustomerId = i.CustomerId
where Country = 'Brazil'