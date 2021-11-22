--insert Region
insert into REGION (region_id, employee_id, region_name, region_zipcode) values (10000, 10000, 'SouthWestern', 33801);
insert into REGION (region_id, employee_id, region_name, region_zipcode) values (10001, 10001, 'NorthWestern', 44801);
insert into REGION (region_id, employee_id, region_name, region_zipcode) values (10002, 10002, 'SouthEastern', 55801);

--insert Store
insert into STORE (store_ID, employee_ID, region_ID, store_numSalesPersons, store_totalSales, store_city) values (10000, 10000, 10000, 10, 10000, 'Pheonix');
insert into STORE (store_ID, employee_ID, region_ID, store_numSalesPersons, store_totalSales, store_city) values (10001, 10001, 10001, 13, 11000, 'Portland');
insert into STORE (store_ID, employee_ID, region_ID, store_numSalesPersons, store_totalSales, store_city) values (10002, 10002, 10002, 16, 12000, 'Lakeland');

--insert Employee
insert into EMPLOYEE (employee_ID, store_ID, employee_email, employee_salary, employee_jobTitle) values (10000, 10000, 'johns@gmail.com', 60000, 'JA');
insert into EMPLOYEE (employee_ID, store_ID, employee_email, employee_salary, employee_jobTitle) values (10001, 10001, 'jamesj@gmail.com', 65000, 'SA');
insert into EMPLOYEE (employee_ID, store_ID, employee_email, employee_salary, employee_jobTitle) values (10002, 10002, 'samescott@gmail.com', 70000, 'MA');

--insert Transaction
insert into TRANSACTION (transaction_ID, employee_ID, store_ID, transaction_date, transaction_total) values (10000, 10000, 10000, '01-JAN-2000', 10000);
insert into TRANSACTION (transaction_ID, employee_ID, store_ID, transaction_date, transaction_total) values (10001, 10001, 10001, '02-MAR-2001', 11000);
insert into TRANSACTION (transaction_ID, employee_ID, store_ID, transaction_date, transaction_total) values (10002, 10002, 10002, '03-JUL-2002', 12000);

-- Inserting Products
insert into PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
values (10000, 0, 'Transmission', 10, 500.00, 'Car Part', '17796', 'Toyota');
insert into PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
values (10001, 1, 'Drive Shaft', 2, 300.00, 'Car Part', '18894', 'Toyota');
insert into PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
values (10002, 0, '500% Great Oil', 100, 50.00, 'Maintenance', '17882', 'Good Year');
insert into PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
values (10003, 0, 'Heavy Duty Tire', 23, 70.00, 'Maintenance', '16050', 'Good Year');
insert into PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
values (10004, 0, 'Red Paint', 4, 600.00, 'Cosmetic', '22759', 'Home Depot');
insert into PRODUCT (product_ID, product_isUsed, product_name, product_invAmount, product_price, product_type, product_model, product_supplier)
values (10005, 1, 'Green Paint', 3, 400.00, 'Cosmetic', '22685', 'Lowes');