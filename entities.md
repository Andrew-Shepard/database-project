### Customers:
 customer ID, name, address (street, city, state, zip code), type (home/business). If business, then business category, company gross annual income, …etc. If home, then marriage status, gender, age, income, …etc.

    Should probably be one customer supertype and the 2 subtypes being home and businees.

    Customers: Customer ID (PK), Name, Address, Type (What subtype)
    Customers: cus_ID (PK), name, address (can split), income, phone, # of vehicles, insurance, type (Determines subtype)

    Home: Marriage status, Gender, Age, # of residents
    Business: Business Category, # of employees

### Products:
 product ID, name, inventory amount, price, product type w.r.t. some classification.

    Not sure what w.r.t. some classification is.
    
    Tires, Batteries, and Engine Parts. (For more ideas: ![image](https://user-images.githubusercontent.com/10381354/141840356-7e67d1bd-1e27-4a10-a1d3-222ed666eee0.png)

    
    This should be the searchable catalog of product for sale as well as the current record of inventory.

    Products: Product ID (PK), Name, Inventory Amount, Price, Product Type
    Products: prod_ID (PK), isUsed (PK, bool), name, amount, price, type, model #, supplier

### ProductList:
 Transaction ID, Product ID, Number

    Bridge between products and Transactions

    ProductList: Transaction ID (PK,FK), Product ID (PK,FK), Number (amount in transaction)
    ProductList: trans_ID (PK, FK to transactions), prod_ID (PK, FK to products), Number (amount included in transaction (4 tires))

### Transactions: 
record of product purchased, including order number, date, salesperson name, product information (price, quantity, etc.), customer information.

    I think this is what we keep track of purchace history in.

    Transactions: Order Number/Transaction ID (PK), Employee ID (FK), Customer ID (FK), Date
    Transactions: trans_ID (PK), emp_ID (FK, salesperson), cus_ID (FK, customer), str_ID (FK, store), date, total paid

### Employee:
 Employee ID, Name, Address, Store assigned, E-mail, Job Title, Salary
    
    Employee: Employee ID (PK), Name, Address, Store ID (FK), E-mail, Job Title (Determines subtype), Salary
    Employee: emp_ID (PK), str_ID (FK, store), name, address, email, salary, date of birth, ssn, hire date, job title (determines subtype)

### Salespersons: 
 Employee ID, Name, Address, E-mail, Job Title, Salary

    Subtype of employee

    Salespersons: Employee ID (PK), Store ID (FK)
    Salespersons: # of sales, comission, Year-To-Date sales

### Store: 
store ID, address, manager, number of salespersons, region.

    Store: Store ID (PK), Address, Manager (FK to employee ID), Number of Salespersons, Region ID (FK)
    Store: str_ID (PK), emp_ID (FK, manager), reg_ID (FK, has zip & state), num salesperson, street, city.


### Region: 
region ID, region name, region manager.

    Region: Region ID (PK), Region Name, Region Manager (FK to Employee ID)
    Region: reg_ID (PK), emp_ID (FK, manager), zip_code (FK, region zip code), name

### Zip Codes:

    ZipCodes: zip_code (PK), state
