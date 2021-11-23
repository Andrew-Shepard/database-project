--CREATE TABLE
CREATE TABLE REGION (
    region_id        NUMBER(5) NOT NULL CHECK (region_ID >= 10000 AND region_ID <= 99999),
    employee_id      NUMBER(5),
    region_name      VARCHAR(20),
    region_zipcode   NUMBER(5) NOT NULL,
    CONSTRAINT region_pk PRIMARY KEY (region_ID)
);

CREATE TABLE STORE (
    store_ID                    NUMBER(5) NOT NULL CHECK (store_ID >= 10000 AND store_ID <= 99999),
    employee_ID                 NUMBER(5),
    region_ID                   NUMBER(5),
    store_numSalesPersons       NUMBER(5),
    store_totalSales            NUMBER(9,2),
    store_city                  VARCHAR(20),
    CONSTRAINT store_pk PRIMARY KEY (store_ID),
    CONSTRAINT store_region_id_fk FOREIGN KEY (region_ID) REFERENCES REGION (region_ID)
);

CREATE TABLE EMPLOYEE (
    employee_ID         NUMBER(5) NOT NULL CHECK (employee_ID >= 10000 AND employee_ID <= 99999),
    store_ID            NUMBER(5),
    employee_first      VARCHAR(20),
    employee_last       VARCHAR(20),
    employee_email      VARCHAR(20),
    employee_salary     NUMBER(9,2) CHECK (employee_salary >= 10000),
    employee_jobTitle   CHAR(2),
    CONSTRAINT employee_pk PRIMARY KEY (employee_ID),
    CONSTRAINT employee_store_id_fk FOREIGN KEY (store_ID) REFERENCES STORE (store_ID)
);

-- Subclass of employee
CREATE TABLE SALESPERSON (
    sp_employee_ID          NUMBER(5) NOT NULL CHECK (sp_employee_ID >= 10000 AND sp_employee_ID <= 99999),
    sp_numSales             NUMBER(4),
    sp_commission           NUMBER(9,2),
    sp_YTDsales             NUMBER(9,2),
    CONSTRAINT salesperson_pk PRIMARY KEY (sp_employee_ID),
    CONSTRAINT salesperson_employee_id_pk FOREIGN KEY (sp_employee_ID) REFERENCES EMPLOYEE (employee_ID)
);

-- Add FK relation to region table
ALTER TABLE region ADD CONSTRAINT region_employee_id_fk FOREIGN KEY 
(employee_ID) REFERENCES EMPLOYEE (employee_ID);

-- Add FK relation to store table
ALTER TABLE store ADD CONSTRAINT store_employee_id_fk FOREIGN KEY 
(employee_ID) REFERENCES EMPLOYEE (employee_ID);

CREATE TABLE TRANSACTION (
    transaction_ID         NUMBER(5) NOT NULL CHECK (transaction_ID >= 10000 AND transaction_ID <= 99999),
    employee_ID            NUMBER(5) NOT NULL,
    customer_ID            NUMBER(5) NOT NULL,
    store_ID               NUMBER(5) NOT NULL,
    transaction_date       DATE,
    transaction_total      NUMBER(9,2),
    CONSTRAINT transaction_pk PRIMARY KEY (transaction_ID),
    CONSTRAINT transaction_employee_id_fk FOREIGN KEY (employee_ID) REFERENCES SALESPERSON (sp_employee_ID)
);

CREATE TABLE PRODUCT (
    product_ID              NUMBER(5) NOT NULL CHECK (product_ID >= 10000 AND product_ID <= 99999),
    product_isUsed          NUMBER(1) NOT NULL CHECK (product_isUsed = 0 OR product_isUsed = 1),
    product_name            VARCHAR(20),
    product_invAmount       NUMBER(4) NOT NULL,
    product_price           NUMBER(9,2),
    product_type            VARCHAR(20) NOT NULL,
    product_model           VARCHAR(20) NOT NULL,
    product_supplier        VARCHAR(20),
    CONSTRAINT product_pk PRIMARY KEY (product_ID, product_isUsed)
);

CREATE TABLE PRODUCTLIST (
    transaction_ID      NUMBER(5) NOT NULL,
    product_ID          NUMBER(5) NOT NULL,
    product_isUsed      NUMBER(1) NOT NULL,
    product_quantity     NUMBER(4) NOT NULL CHECK (product_quantity >= 1 AND product_quantity <= 9999),
    CONSTRAINT productlist_pk PRIMARY KEY (transaction_ID, product_ID, product_isUsed),
    CONSTRAINT productlist_transaction_id_fk FOREIGN KEY (transaction_ID) REFERENCES TRANSACTION (transaction_ID),
    CONSTRAINT productlist_product_id_fk FOREIGN KEY (product_ID, product_isUsed) REFERENCES PRODUCT (product_ID, product_isUsed)
);

CREATE TABLE CUSTOMER (
    customer_ID                     NUMBER(5) NOT NULL CHECK (customer_ID >= 10000 AND customer_ID <= 99999),
    customer_name                   VARCHAR(20) NOT NULL,
    customer_address                VARCHAR(30),
    customer_income                 NUMBER(9,2),
    customer_phone                  NUMBER(10),
    customer_vehicles               NUMBER(5),
    customer_insurance              VARCHAR(20) NOT NULL,
    customer_type                   CHAR(2) NOT NULL,
    CONSTRAINT customer_pk PRIMARY KEY (customer_ID)
);

-- Subclasses of customer
CREATE TABLE BUSINESS (
    business_customer_ID    NUMBER(5) NOT NULL CHECK (business_customer_ID >= 10000 AND business_customer_ID <= 99999),
    business_category       VARCHAR(20) NOT NULL,
    business_numEmployees   NUMBER(5) CHECK (business_numEmployees >= 1 AND business_numEmployees <= 99999),
    CONSTRAINT business_pk PRIMARY KEY (business_customer_ID),
    CONSTRAINT business_customer_id_fk FOREIGN KEY (business_customer_ID) REFERENCES CUSTOMER (customer_ID)
);

CREATE TABLE HOME (
    home_customer_ID    NUMBER(5) NOT NULL CHECK (home_customer_ID >= 10000 AND home_customer_ID <= 99999),
    home_marriageStat   CHAR(1), 
    home_gender         CHAR(1),
    home_age            NUMBER(3),
    home_numResidents   NUMBER(3),
    CONSTRAINT home_pk PRIMARY KEY (home_customer_ID),
    CONSTRAINT home_customer_id_fk FOREIGN KEY (home_customer_ID) REFERENCES CUSTOMER (customer_ID)
);