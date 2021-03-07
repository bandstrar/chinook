select (e.FirstName + ' ' + e.LastName) as Sales_Agent, Count(c.CustomerId) as Customer_Count
from Customer c
	join Employee e
		on c.SupportRepId = e.EmployeeId
group by e.FirstName, e.LastName