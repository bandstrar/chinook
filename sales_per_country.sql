select c.Country, sum(i.total) as Total_Sales
from Invoice i
	join Customer c
		on i.CustomerId = c.CustomerId
group by c.Country