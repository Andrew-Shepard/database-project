### Customers:
 customer ID, name, address (street, city, state, zip code), type (home/business). If business, then business category, company gross annual income, …etc. If home, then marriage status, gender, age, income, …etc.

    Should probably be one customer supertype and the 2 subtypes being home and businees.

    Customers: Customer ID (PK), Name, Address, Type (What subtype)

    Home: Marriage status, Gender, Age, Income
    Business: Business Category, Company Annual Income

### Products:
 product ID, name, inventory amount, price, product type w.r.t. some classification.

    Not sure what w.r.t. some classification is.
    
    Tires, Batteries, and Engine Parts. (For more ideas: ![image](https://user-images.githubusercontent.com/10381354/141840356-7e67d1bd-1e27-4a10-a1d3-222ed666eee0.png)

    
    This should be the searchable catalog of product for sale as well as the current record of inventory.

    Products: Product ID (PK), Name, Inventory Amount, Price, Product Type

### ProductList:
 Transaction ID, Product ID, Number

    Bridge between products and Transactions

    ProductList: Transaction ID (PK,FK), Product ID (PK,FK), Number (amount in transaction)

### Transactions: 
record of product purchased, including order number, date, salesperson name, product information (price, quantity, etc.), customer information.

    I think this is what we keep track of purchace history in.

    Transactions: Order Number/Transaction ID (PK), Employee ID (FK), Customer ID (FK), Date

### Employee:
 Employee ID, Name, Address, Store assigned, E-mail, Job Title, Salary
    
    Employee: Employee ID (PK), Name, Address, Store ID (FK), E-mail, Job Title (Determines subtype), Salary

### Salespersons: 
 Employee ID, Name, Address, E-mail, Job Title, Salary

    Subtype of employee

    Salespersons: Employee ID (PK), Store ID (FK)

### Store: 
store ID, address, manager, number of salespersons, region.

    Store: Store ID (PK), Address, Manager (FK to employee ID), Number of Salespersons, Region ID (FK)


### Region: 
region ID, region name, region manager.

    Region: Region ID (PK), Region Name, Region Manager (FK to Employee ID)
