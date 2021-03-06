select
	Total,
	(c.FirstName + ' ' + c.LastName) as customer_name,
	c.Country as customer_country,
	(e.FirstName + ' ' + e.LastName) as sales_agent_name
from Invoice i
	join Customer c
		on i.CustomerId = c.CustomerId
	join Employee e
		on e.EmployeeId = c.SupportRepId
order by customer_name