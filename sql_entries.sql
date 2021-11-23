--Insert Region
INSERT INTO REGION (region_id, employee_id, region_name, region_zipcode) VALUES (10000, NULL, 'SouthWestern', 33801);
INSERT INTO REGION (region_id, employee_id, region_name, region_zipcode) VALUES (10001, NULL, 'NorthWestern', 44801);
INSERT INTO REGION (region_id, employee_id, region_name, region_zipcode) VALUES (10002, NULL, 'SouthEastern', 55801);

--Insert Store
INSERT INTO STORE (store_ID, employee_ID, region_ID, store_numSalesPersons, store_totalSales, store_city) VALUES (10000, NULL, 10000, 10, 10000, 'Pheonix');
INSERT INTO STORE (store_ID, employee_ID, region_ID, store_numSalesPersons, store_totalSales, store_city) VALUES (10001, NULL, 10001, 13, 11000, 'Portland');
INSERT INTO STORE (store_ID, employee_ID, region_ID, store_numSalesPersons, store_totalSales, store_city) VALUES (10002, NULL, 10002, 16, 12000, 'Lakeland');

--Insert Employee
INSERT INTO EMPLOYEE (employee_ID, store_ID, employee_first, employee_last, employee_email, employee_salary, employee_jobTitle) VALUES (10000, 10000, 'John', 'Smith', 'jsmith', 60000, 'J');
INSERT INTO EMPLOYEE (employee_ID, store_ID, employee_first, employee_last, employee_email, employee_salary, employee_jobTitle) VALUES (10001, 10001, 'James', 'Johnson', 'jjohnson', 65000, 'S');
INSERT INTO EMPLOYEE (employee_ID, store_ID, employee_first, employee_last, employee_email, employee_salary, employee_jobTitle) VALUES (10002, 10002, 'Sarah', 'Waterson', 'swatterson', 70000, 'M');
INSERT INTO EMPLOYEE (employee_ID, store_ID, employee_first, employee_last, employee_email, employee_salary, employee_jobTitle) VALUES (10003, 10000, 'Aubrey', 'Jones', 'ajones', 66000, 'S');
INSERT INTO EMPLOYEE (employee_ID, store_ID, employee_first, employee_last, employee_email, employee_salary, employee_jobTitle) VALUES (10004, 10002, 'Lily', 'West', 'lwest', 47000, 'S');

--Inserting Salespersons
INSERT INTO SALESPERSON (sp_employee_ID, sp_numSales, sp_commission, sp_YTDsales) VALUES (10001, 58, 55000, 160000);
INSERT INTO SALESPERSON (sp_employee_ID, sp_numSales, sp_commission, sp_YTDsales) VALUES (10003, 46, 41000, 120000);
INSERT INTO SALESPERSON (sp_employee_ID, sp_numSales, sp_commission, sp_YTDsales) VALUES (10004, 39, 35000, 100000);

--Setting Reigon Managers
UPDATE region SET employee_id = 10000 WHERE region_id = 10000;
UPDATE region SET employee_id = 10001 WHERE region_id = 10001;
UPDATE region SET employee_id = 10002 WHERE region_id = 10002;

--Setting Store Managers
UPDATE store SET employee_id = 10000 WHERE store_id = 10000;
UPDATE store SET employee_id = 10001 WHERE store_id = 10001;
UPDATE store SET employee_id = 10002 WHERE store_id = 10002;

--Insert Home Customers
INSERT INTO CUSTOMER (customer_ID, customer_name, customer_address, customer_income, customer_phone, customer_vehicles, customer_insurance, customer_type) 
VALUES (10001, 'John Johnson', '1234 street', 15647.00, 1234567891, 5, 'Forms', 'H');
INSERT INTO CUSTOMER (customer_ID, customer_name, customer_address, customer_income, customer_phone, customer_vehicles, customer_insurance, customer_type) 
VALUES (10002, 'Johnny Appleseed', 'Job street', 458754.00, 4657849461 , 25, 'Helpp', 'H');
INSERT INTO CUSTOMER (customer_ID, customer_name, customer_address, customer_income, customer_phone, customer_vehicles, customer_insurance, customer_type) 
VALUES (10003, 'Alexander Tyrell', 'Place blvrd', 546791.00, 6794815423, 7, 'Whatever', 'H');

--Creating entries in home table
INSERT INTO HOME (home_customer_ID, home_marriageStat, home_gender, home_age, home_numResidents) 
VALUES (10001, 'M', 'M', 37, 4);
INSERT INTO HOME (home_customer_ID, home_marriageStat, home_gender, home_age, home_numResidents) 
VALUES (10002, 'M', 'M', 55, 5);
INSERT INTO HOME (home_customer_ID, home_marriageStat, home_gender, home_age, home_numResidents) 
VALUES (10003, 'U', 'W', 22, 1);

--Insert Business Customers
INSERT INTO CUSTOMER (customer_ID, customer_name, customer_address, customer_income, customer_phone, customer_vehicles, customer_insurance, customer_type) 
VALUES (10004, 'Goggle', 'Seed parkway', 6754846.00, 4675121346, 6, 'Loops', 'B');
INSERT INTO CUSTOMER (customer_ID, customer_name, customer_address, customer_income, customer_phone, customer_vehicles, customer_insurance, customer_type) 
VALUES (10005, 'FloorStore', 'South Sheep walkway', 9999948.00, 4587896650, 8, 'Meep', 'B');

--Creating entries in business table
INSERT INTO BUSINESS (business_customer_ID, business_category, business_numEmployees)
VALUES (10004, 'Technology', 10049);
INSERT INTO BUSINESS (business_customer_ID, business_category, business_numEmployees)
VALUES (10005, 'Retail', 45985);

--Inserting Products
INSERT INTO PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
VALUES (10000, 0, 'Transmission', 10, 500.00, 'Car Part', '17796', 'Toyota');
INSERT INTO PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
VALUES (10001, 1, 'Drive Shaft', 2, 300.00, 'Car Part', '18894', 'Toyota');
INSERT INTO PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
VALUES (10002, 0, '500% Great Oil', 100, 50.00, 'Maintenance', '17882', 'Good Year');
INSERT INTO PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
VALUES (10003, 0, 'Heavy Duty Tire', 23, 70.00, 'Maintenance', '16050', 'Good Year');
INSERT INTO PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
VALUES (10004, 0, 'Red Paint', 4, 600.00, 'Cosmetic', '22759', 'Home Depot');
INSERT INTO PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
VALUES (10005, 1, 'Green Paint', 3, 400.00, 'Cosmetic', '22685', 'Lowes');

--Insert Transaction
INSERT INTO TRANSACTION (transaction_ID, employee_ID, customer_ID, store_ID, transaction_date, transaction_total) VALUES (10000, 10001, 10000, 10000, '01-JAN-2000', 10000);
INSERT INTO TRANSACTION (transaction_ID, employee_ID, customer_ID, store_ID, transaction_date, transaction_total) VALUES (10001, 10003, 10001, 10001, '02-MAR-2001', 11000);
INSERT INTO TRANSACTION (transaction_ID, employee_ID, customer_ID, store_ID, transaction_date, transaction_total) VALUES (10002, 10004, 10002, 10002, '03-JUL-2002', 12000);

--Insert ProductList
insert into PRODUCTLIST (transaction_ID, product_ID, product_isUsed, product_quantity) values (10000, 10000, 0, 4568);
insert into PRODUCTLIST (transaction_ID, product_ID, product_isUsed, product_quantity) values (10001, 10001, 1, 5785);
insert into PRODUCTLIST (transaction_ID, product_ID, product_isUsed, product_quantity) values (10001, 10002, 0, 1346);
insert into PRODUCTLIST (transaction_ID, product_ID, product_isUsed, product_quantity) values (10002, 10003, 0, 4568);
insert into PRODUCTLIST (transaction_ID, product_ID, product_isUsed, product_quantity) values (10002, 10004, 0, 5647);
