select
	i.*,
	(e.FirstName + ' ' + e.LastName) as sales_agent_name
from Invoice i
	join Customer c
		on i.CustomerId = c.CustomerId
	join Employee e
		on e.EmployeeId = c.SupportRepId
order by sales_agent_name