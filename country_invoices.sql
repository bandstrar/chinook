select Count(*) as Number_of_Invoices, BillingCountry
from Invoice i
group by BillingCountry