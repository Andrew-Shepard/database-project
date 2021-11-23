-- Customer Browsing
select * from Product; --select all from product
select product_name, product_invamount from Product; --display product name and product inventory amount
select * from Product where product_supplier = 'Toyota'; --select all products by supplier Toyota
select * from Product where product_isused = '1'; --select all used products 
select count(product_name) from Product where product_name = 'Drive Shaft'; --select number of drive shafts
select product_name, product_price from Product where product_price between 300 and 500; --select product name and prices between 300 and 500 dollars
select AVG(product_price) from Product; --select average product price
UPDATE Product SET Product_price = 850 WHERE Product_name = 'Transmission'; --update product price for transmission to 850
UPDATE Product SET product_invamount = 20 WHERE product_name = 'Drive Shaft'; --update product inventory for drive shaft to 20 parts

select * from Customer; --select all from customer
select AVG(customer_income) from Customer; --select average customer incomes
select MIN(customer_vehicles) from Customer; --select minimum number of vehicles per household
select customer_name, customer_type from Customer; --select which type of customer each customer is
select customer_phone from Customer where customer_name = 'Otto Jager'; --select customer "Otto Jager's" phone number

select * from Store; --select all from store
select store_numsalespersons from Store where store_id = '10001'; --select total number of sales persons at store id:10001
select store_totalsales from Store where store_city = 'Lakeland'; --select total number of sales from the lakeland city store
select AVG(store_totalsales) from Store; --selects the average total sales of all stores

select * from Employee; --select all from employee
UPDATE Employee SET Employee_first = 'John' where employee_id = '10000'; --updates employee 10000 to have first name John
UPDATE Employee SET Employee_last = 'Smith' where employee_id = '10000'; --updates employee 10000 to have last name Smith
UPDATE Employee SET Employee_first = 'James' where employee_id = '10001'; --updates employee 10001 to have first name James
UPDATE Employee SET Employee_last = 'Jameson' where employee_id = '10001'; --updates employee 10001 to have last name Jameson
UPDATE Employee SET Employee_first = 'Sam' where employee_id = '10002'; --updates employee 10002 to have first name Sam
UPDATE Employee SET Employee_last = 'Escott' where employee_id = '10002'; --updates employee 10002 to have last name Escott

select * from Transaction; --select all from Transaction
select employee_id from Transaction where transaction_date = '02-MAR-01'; --selects the employee id of the employee who aided transaction on 02-MAR-01
select employee_first, employee_last from employee where employee_id = '10001'; --selects the employee's first and last name from table employee of employee who assisted on 02-MAR-01
select customer_name from Customer where customer_id = '10001'; --selects customer name where the customer ID = 10001

--TODO: Update Transactions

--TODO: Demonstrate Error Checking

--TODO: Data Aggregation