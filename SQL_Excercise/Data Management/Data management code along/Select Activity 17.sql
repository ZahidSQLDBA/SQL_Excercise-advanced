use personaltrainer;

/*
Select InvoiceId, Description, Price, Quantity, ServiceDate and the line item total, a calculated value, 
from InvoiceLineItem, where the line item total is between 15 and 25 dollars. (667 rows)
*/

Select 
	InvoiceId,
    Description,
    Price,
    Quantity,
    ServiceDate,
    (price * Quantity) as Total
From invoicelineitem
where (price * Quantity) between 15 and 25;

Select 
	Count(InvoiceLineItemId) as Count
From invoicelineitem
where (price * Quantity) between 15 and 25;