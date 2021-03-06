select sum(i.total) as Sales_Total, 
(select (e.FirstName + ' ' + e.LastName) from Employee e where e.EmployeeId = c.SupportRepId) as Sales_Employee
from Invoice i
	join Customer c
		on c.CustomerId = i.CustomerId
group by c.SupportRepId