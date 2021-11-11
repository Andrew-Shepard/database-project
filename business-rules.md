### Customers: !!!
 customer ID, name, address (street, city, state, zip code), type (home/business). If business, then business category, company gross annual income, …etc. If home, then marriage status, gender, age, income, …etc.

    I think customer should be broken into 3 entities: Customers, Home, and Business.

    Customers: Customer ID, Name, Address, Type
    Home: Customer ID, Marriage status, Gender, Age, Income
    Business: Customer ID, Business Category, Company Annual Income 

### Products:
 product ID, name, inventory amount, price, product type w.r.t. some classification.

    Not sure what w.r.t. some classification is.
    Products: Product ID, Name, Inventory Amount, Price, Product Type

### Transactions: 
record of product purchased, including order number, date, salesperson name, product information (price, quantity, etc.)
, customer information.

    Transactions: Product ID, Order Number, Date, Employee ID, Customer ID

### Employee:
    Employee ID, Name, Address, E-mail, Job Title

### Salespersons: 
name, address, e-mail, job title, store assigned, salary.

    Salespersons: Employee ID, Store ID, Salary

### Store: 
store ID, address, manager, number of salespersons, region.

    Store: Store ID, Address, Manager (As an employee ID), Number of Salespersons, Region


### Region: 
region ID, region name, region manager.

    Region: Region ID, Region Name, Region Manager (As an Employee ID)

