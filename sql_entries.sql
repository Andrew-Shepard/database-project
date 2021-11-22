--Insert Region
INSERT INTO REGION (region_id, employee_id, region_name, region_zipcode) VALUES (10000, NULL, 'SouthWestern', 33801);
INSERT INTO REGION (region_id, employee_id, region_name, region_zipcode) VALUES (10001, NULL, 'NorthWestern', 44801);
INSERT INTO REGION (region_id, employee_id, region_name, region_zipcode) VALUES (10002, NULL, 'SouthEastern', 55801);

--Insert Store
INSERT INTO STORE (store_ID, employee_ID, region_ID, store_numSalesPersons, store_totalSales, store_city) VALUES (10000, NULL, 10000, 10, 10000, 'Pheonix');
INSERT INTO STORE (store_ID, employee_ID, region_ID, store_numSalesPersons, store_totalSales, store_city) VALUES (10001, NULL, 10001, 13, 11000, 'Portland');
INSERT INTO STORE (store_ID, employee_ID, region_ID, store_numSalesPersons, store_totalSales, store_city) VALUES (10002, NULL, 10002, 16, 12000, 'Lakeland');

--Insert Employee
INSERT INTO EMPLOYEE (employee_ID, store_ID, employee_email, employee_salary, employee_jobTitle) VALUES (10000, 10000, 'johns@gmail.com', 60000, 'JA');
INSERT INTO EMPLOYEE (employee_ID, store_ID, employee_email, employee_salary, employee_jobTitle) VALUES (10001, 10001, 'jamesj@gmail.com', 65000, 'SA');
INSERT INTO EMPLOYEE (employee_ID, store_ID, employee_email, employee_salary, employee_jobTitle) VALUES (10002, 10002, 'samescott@gmail.com', 70000, 'MA');

--Setting Reigon Managers
UPDATE region SET employee_id = 10000 WHERE region_id = 10000;
UPDATE region SET employee_id = 10001 WHERE region_id = 10001;
UPDATE region SET employee_id = 10002 WHERE region_id = 10002;

--Setting Store Managers
UPDATE store SET employee_id = 10000 WHERE store_id = 10000;
UPDATE store SET employee_id = 10001 WHERE store_id = 10001;
UPDATE store SET employee_id = 10002 WHERE store_id = 10002;

--Insert Customer
INSERT INTO CUSTOMER (customer_ID, customer_name, customer_address, customer_income, customer_phone, customer_vehicles, customer_insurance, customer_type) 
VALUES (10001, 'John Johnson', '1234 street', 15647.00, 1234567891, 5, 'forms', 1);
INSERT INTO CUSTOMER (customer_ID, customer_name, customer_address, customer_income, customer_phone, customer_vehicles, customer_insurance, customer_type) 
VALUES (10002, 'Johnny Appleseed', 'job street', 458754.00, 4657849461 , 25, 'Helpp', 2);
INSERT INTO CUSTOMER (customer_ID, customer_name, customer_address, customer_income, customer_phone, customer_vehicles, customer_insurance, customer_type) 
VALUES (10003, 'Alexander Tyrell', 'place blvrd', 546791.00, 6794815423, 7, 'Whatever', 3);
INSERT INTO CUSTOMER (customer_ID, customer_name, customer_address, customer_income, customer_phone, customer_vehicles, customer_insurance, customer_type) 
VALUES (10004, 'Regalia Von Kaiser', 'seed parkway', 67548.00, 4675121346, 6, 'Loops', 2);
INSERT INTO CUSTOMER (customer_ID, customer_name, customer_address, customer_income, customer_phone, customer_vehicles, customer_insurance, customer_type) 
VALUES (10005, 'Otto Jager', 'South Sheep walkway', 99999.00, 4587896650, 8, 'Meep', 1);

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
INSERT INTO TRANSACTION (transaction_ID, employee_ID, customer_ID, store_ID, transaction_date, transaction_total) VALUES (10000, 10000, 10000, 10000, '01-JAN-2000', 10000);
INSERT INTO TRANSACTION (transaction_ID, employee_ID, customer_ID, store_ID, transaction_date, transaction_total) VALUES (10001, 10001, 10001, 10001, '02-MAR-2001', 11000);
INSERT INTO TRANSACTION (transaction_ID, employee_ID, customer_ID, store_ID, transaction_date, transaction_total) VALUES (10002, 10002, 10002, 10002, '03-JUL-2002', 12000);

--Insert ProductList
insert into PRODUCTLIST (transaction_ID, product_ID, product_isUsed, product_quantity) values (10000, 10000, 0, 4568);
insert into PRODUCTLIST (transaction_ID, product_ID, product_isUsed, product_quantity) values (10001, 10001, 1, 5785);
insert into PRODUCTLIST (transaction_ID, product_ID, product_isUsed, product_quantity) values (10001, 10002, 0, 1346);
insert into PRODUCTLIST (transaction_ID, product_ID, product_isUsed, product_quantity) values (10002, 10003, 0, 4568);
insert into PRODUCTLIST (transaction_ID, product_ID, product_isUsed, product_quantity) values (10002, 10004, 0, 5647);
