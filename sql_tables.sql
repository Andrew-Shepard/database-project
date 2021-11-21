CREATE TABLE auto.region (
    region_id CHAR(5) GENERATED DEFAULT BY IDENTITY UNIQUE,
    employee_id CHAR(5) NOT NULL UNIQUE,
    region_name VARCHAR(20) NOT NULL,
    region_zipcode CHAR(5) NOT NULL,
    PRIMARY KEY(region_id)
    CONSTRAINT fk_column
        FOREIGN KEY(employee_id)
        REFERENCES employee(employee_id)
);
CREATE TABLE auto.store (
    store_id CHAR(5) GENERATED DEFAULT BY IDENTITY UNIQUE,
    employee_id CHAR(5) UNIQUE,
    region_id CHAR(5) UNIQUE,
    number_of_employees CHAR(5),
    total_sales CHAR(5),
    city CHAR(5),
    PRIMARY KEY(store_id)
    CONSTRAINT fk_column /* Unsure if it's possible to have multiple FK in oracle sql */
        FOREIGN KEY(region_id)
        REFERENCES region(region_id)
        
);
CREATE TABLE auto.employee (
    employee_id CHAR(5) GENERATED DEFAULT BY IDENTITY UNIQUE,
    store_id CHAR(5) ,
    employee_email VARCHAR(20),
    employee_salary NUMBER(9,2),
    employee_job_title CHAR(2),
    PRIMARY KEY(employee_id)
    CONSTRAINT fk_column
        FOREIGN KEY(store_id)
        REFERENCES auto.store(store_id)
);
CREATE TABLE auto.salesperson (
    employee_id CHAR(5),
    number_of_sales NUMBER(4,0),
    commission NUMBER(9,2),
    YTD_sales NUMBER(9,2),
    PRIMARY KEY(employee_id)
    CONSTRAINT fk_column
        FOREIGN KEY(store_id)
        REFERENCES auto.store(store_id)
);
CREATE TABLE auto.transactions(
    transaction_id CHAR(5),
    employee_id CHAR(5),
    customer_id CHAR(5),
    store_id CHAR(5),
    transaction_date DATE,
    transaction_total NUMBER(9,2), 
    PRIMARY KEY(transaction_id)
    CONSTRAINT fk_column
        FOREIGN KEY(employee_id)
        REFERENCES auto.employee(employee_id)
);
CREATE TABLE auto.productList(
    transaction_id CHAR(5),
    product_id CHAR(5),
    product_quanity NUMBER(4,0),
    PRIMARY KEY(transaction_id, product_id)
    CONSTRAINT fk_column
        FOREIGN KEY(transaction_id)
        REFERENCES auto.transactions(transaction_id)
);
