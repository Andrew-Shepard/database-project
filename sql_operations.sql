-- Customer Browsing
--Selecting the id, name, amount, and price of cosmetic products
SELECT PRODUCT_ID, PRODUCT_ISUSED, PRODUCT_NAME, PRODUCT_INVAMOUNT, PRODUCT_PRICE FROM (SELECT * FROM PRODUCT WHERE PRODUCT_TYPE = 'Cosmetic');
--Searching for part of a product's name
SELECT PRODUCT_ID, PRODUCT_ISUSED, PRODUCT_NAME, PRODUCT_INVAMOUNT, PRODUCT_PRICE FROM (SELECT * FROM PRODUCT WHERE PRODUCT_NAME LIKE '%ea%');

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

--Update Transactions:
--Adds new transaction to appropriate table
INSERT INTO TRANSACTION (transaction_ID, employee_ID, customer_ID, store_ID, transaction_date, transaction_total) VALUES (10003, 10001, 10003, 10003, '02-JAN-2000', 19000);
--Changes transaction total for the above transaction
UPDATE Transaction SET transaction_total = '13000' WHERE transaction_id = '10003';

--Error Checking:
--Shows current product table
SELECT * FROM PRODUCT;
--Showing invAmount can't be negative
UPDATE PRODUCT SET product_invAmount = -5;
--Showing that you can't add a product with a used field that's not 0 or 1;
INSERT INTO PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
VALUES (10000, 5, 'Transmission', 10, 500.00, 'Car Part', '17796', 'Toyota');
--Showing you can't add a product with a 1 digit key
INSERT INTO PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
VALUES (1, 5, 'Transmission', 10, 500.00, 'Car Part', '17796', 'Toyota');

--Data Aggregation
--Shows the total amount made from different product categories in descending order
SELECT SUM(pl.product_quantity * pd.product_price) AS YTD_Sales, product_type FROM PRODUCTLIST pl JOIN PRODUCT pd ON pl.PRODUCT_ID = pd.PRODUCT_ID GROUP BY product_type ORDER BY YTD_SALES DESC;