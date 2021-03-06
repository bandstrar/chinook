select Top(1) sum(i.total) as Sales_Total, 
(select (e.FirstName + ' ' + e.LastName) from Employee e where e.EmployeeId = c.SupportRepId) as Sales_Employee
from Invoice i
	join Customer c
		on c.CustomerId = i.CustomerId
where InvoiceDate like '%2009%'
group by c.SupportRepId
order by Sales_Total Desc