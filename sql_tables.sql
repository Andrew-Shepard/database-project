--CREATE TABLE
CREATE TABLE REGION (
    region_id        NUMBER(5) NOT NULL,
    employee_id      NUMBER(5),
    region_name      VARCHAR(20),
    region_zipcode   NUMBER(5) NOT NULL,
    CONSTRAINT pk_region PRIMARY KEY (region_ID)
);

CREATE TABLE STORE (
    store_ID                    NUMBER(5) NOT NULL,
    employee_ID                 NUMBER(5),
    region_ID                   NUMBER(5),
    store_numSalesPersons       NUMBER(5),
    store_totalSales            NUMBER(9,2),
    store_city                  VARCHAR(20),
    CONSTRAINT pk_store PRIMARY KEY (store_ID),
    CONSTRAINT fk_region_ID FOREIGN KEY (region_ID) REFERENCES REGION (region_ID)
);

CREATE TABLE EMPLOYEE (
    employee_ID         NUMBER(5) NOT NULL,
    store_ID            NUMBER(5),
    employee_first      VARCHAR(20),
    employee_last       VARCHAR(20),
    employee_email      VARCHAR(20),
    employee_salary     NUMBER(9,2),
    employee_jobTitle   CHAR(2),
    CONSTRAINT pk_employee PRIMARY KEY (employee_ID),
    CONSTRAINT fk_store_ID FOREIGN KEY (store_ID) REFERENCES STORE (store_ID)
);
-- Add FK relation to region table
alter table REGION add CONSTRAINT fk_region FOREIGN KEY 
(employee_ID) REFERENCES EMPLOYEE (employee_ID);

CREATE TABLE TRANSACTION (
    transaction_ID         NUMBER(5) NOT NULL,
    employee_ID            NUMBER(5) NOT NULL,
    customer_ID            NUMBER(5) NOT NULL,
    store_ID               NUMBER(5) NOT NULL,
    transaction_date       DATE,
    transaction_total      NUMBER(9,2),
    CONSTRAINT pk_transactions PRIMARY KEY (transaction_ID),
    CONSTRAINT fk_employee_ID FOREIGN KEY (employee_ID) REFERENCES EMPLOYEE (employee_ID) -- Need to change to salesperson later
);

CREATE TABLE PRODUCT (
    product_ID              NUMBER(5) NOT NULL,
    product_isUsed          NUMBER(1) NOT NULL,
    product_name            VARCHAR(20),
    product_invAmount       NUMBER(4) NOT NULL,
    product_price           NUMBER(9,2),
    product_type            VARCHAR(20) NOT NULL,
    product_model           VARCHAR(20) NOT NULL,
    product_supplier        VARCHAR(20),
    CONSTRAINT pk_product PRIMARY KEY (product_ID, product_isUsed)
);

CREATE TABLE PRODUCTLIST (
    transaction_ID      NUMBER(5) NOT NULL,
    product_ID          NUMBER(5) NOT NULL,
    product_isUsed      NUMBER(1) NOT NULL,
    product_quanity     NUMBER(4) NOT NULL,
    CONSTRAINT pk_productList PRIMARY KEY (transaction_ID, product_ID, product_isUsed),
    CONSTRAINT fk_transaction_ID FOREIGN KEY (transaction_ID) REFERENCES TRANSACTION (transaction_ID),
    CONSTRAINT fk_product_ID FOREIGN KEY (product_ID, product_isUsed) REFERENCES PRODUCT (product_ID, product_isUsed)
);

CREATE TABLE CUSTOMER (
    customer_ID                     NUMBER(5) NOT NULL,
    customer_name                   VARCHAR(20) NOT NULL,
    customer_address                VARCHAR(30),
    customer_income                 NUMBER(9,2),
    customer_phone                  NUMBER(10),
    customer_vehicles               NUMBER(5),
    customer_insurance              VARCHAR(20) NOT NULL,
    customer_type                   CHAR(2) NOT NULL,
    CONSTRAINT pk_customer PRIMARY KEY (customer_ID)
);

-- Need to figure out how to implement subclasses/subtypes
/*
-- Subclass of employee
CREATE TABLE SALESPERSON (
    employee_ID             NUMBER(5) NOT NULL,
    sp_numSales             NUMBER(4),
    sp_commission           NUMBER(9,2),
    sp_YTDsales             NUMBER(9,2),
    CONSTRAINT pk_salesperson PRIMARY KEY (employee_ID),
    CONSTRAINT fk_employee_ID FOREIGN KEY (employee_ID) REFERENCES EMPLOYEE (employee_ID)
);

-- Subclasses of customer
CREATE TABLE BUSINESS (
    customer_ID             NUMBER(5) NOT NULL,
    business_category       VARCHAR(20) NOT NULL,
    business_numEmployees   NUMBER(5),
    CONSTRAINT pk_business PRIMARY KEY (customer_ID),
    CONSTRAINT fk_customer_ID FOREIGN KEY (customer_ID) REFERENCES CUSTOMER (customer_ID)
);

CREATE TABLE HOME (
    customer_ID         NUMBER(5) NOT NULL,
    home_marriageStat   CHAR(1), 
    home_gender         CHAR(1),
    home_age            NUMBER(3),
    home_numResidents   NUMBER(3),
    CONSTRAINT pk_home PRIMARY KEY (customer_ID),
    CONSTRAINT fk_customer_ID FOREIGN KEY (customer_ID) REFERENCES CUSTOMER (customer_ID)
);
*/