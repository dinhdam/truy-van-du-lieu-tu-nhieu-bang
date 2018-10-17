CREATE DATABASE Querydata;
  use Querydata;
use classicmodels;
 SELECT customers.customerNumber,customerName,phone,city,paymentDate,amount
from customers
INNER JOIN payments
ON customers.customerNumber = payments.customerNumber
 where city = 'Las Vegas';
SELECT customers.customerNumber,customers.customerName,orders.orderNumber,orders.status
    from customers
    left join orders
    on customers.customerNumber = orders.customerNumber;
select customers.customerNumber, customers.customerName, orders.orderNumber, orders.status
    from customers LEFT JOIN orders
    on customers.customerNumber = orders.customerNumber
    where orderNumber is null