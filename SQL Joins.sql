/* joins: select all the computers from the products table:
using the products table and the categories table, return the product name and the category name */
Select p.Name,c.Name from products as p
INNER JOIN categories as c
ON C.categoryID = P.categoryID
Where C.name = 'computers';



 
/* joins: find all product names, product prices, and products ratings that have a rating of 5 */
Select  p.Name, p.Price, r.Rating from products as p
INNER JOIN reviews as r
ON p.ProductID = R.productID
Where r.Rating = '5';

 
 
/* joins: find the employee with the most total quantity sold.  use the sum() function and group by */
SELECT e.FirstName, e.LastName, Sum(s.quantity) As 'total'
FROM sales AS s
INNER JOIN employees AS e ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID
ORDER BY total DESC
;


/* joins: find the name of the department, and the name of the category for Appliances and Games */
SELECT d.Name, c.Name
From departments As d
INNER JOIN categories As c On c.DepartmentID = d.DepartmentID
Where c.Name = "Appliances" or c.Name = "Games";

/* joins: find the product name, total # sold, and total price sold,
 for Eagles: Hotel California --You may need to use SUM() */
Select p.Name, 
Sum(sales.Quantity) as "Total sold",
Sum(sales.Quantity * sales.PricePerUnit) as "Total price"
From products as p
INNER JOIN sales on sales.ProductID = p.ProductID
Where p.name = "Eagles: Hotel California";


/* joins: find Product name, reviewer name, rating, and comment on the Visio TV. (only return for the lowest rating!) */
select p.name, r.Reviewer, r.Rating, r.comment 
from products as p
join reviews as r 
on p.productID = r.ProductID
where p.name = "visio tv" and r.Rating < 3;

-- ------------------------------------------ Extra - May be difficult
/* Your goal is to write a query that serves as an employee sales report.
This query should return the employeeID, the employee's first and last name, the name of each product, how many of that product they sold */
 select e.EmployeeID, e.FirstName as 'First Name', e.LastName as 'Last Name', p.Name, SUM(s.Quantity) as 'Total Sold'
 from sales as s
 join employees as e
 on e.employeeID = s.EmployeeID
 join products as p 
 on p.ProductID = s.ProductID
 group by e.EmployeeId, p.ProductID
 order by SUM(s.Quantity) DESC;
 
 
