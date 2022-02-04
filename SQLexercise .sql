-- find all products 
SELECT * FROM products;
 
-- find all products that cost $1400
SELECT * FROM products
Where price = 1400;
 
-- find all products that cost $11.99 or $13.99
SELECT * FROM  products
where price = 11.99 OR 13.99;
 
-- find all products that do NOT cost 11.99 - using NOT
SELECT * FROM products
WHERE Not price = 11.99;
 
-- find  all products and sort them by price from greatest to least
 SELECT * FROM products
 Order by price desc;
 
-- find all employees who don't have a middle initial
 select * from employees
 where  middleinitial is null;
 
-- find distinct product prices
 select * from products
 Order by prices;
 
-- find all employees whose first name starts with the letter ‘j’
 Select * from employees
 Where FirstName like 'j%';
 
-- find all Macbooks 
 Select * From products 
 Where Name = Macbooks;

-- find all products that are on sale
 Select * From products 
 Where OnSales;
 
-- find the average price of all products 
 select * from products;
 Select average (products.price);
 
-- find all Geek Squad employees who don't have a middle initial 
select * from employees
Where MiddleInitial is null and title = 'Greek Squad';


-- find all products from the products table whose stock level is in the range  -- of 500 to 1200. Order by Price from least to greatest. **Use the between keyword** 
select * from products
Where stocklevel between 500 and 1200employeesemployees
Order By Price;



