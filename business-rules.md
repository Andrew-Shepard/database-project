### Region

    One region HAS many stores, many stores BELONG TO one region.
    One region is MANAGED by one employee, one employee MANAGES one region.

### Store

    One store EMPLOYS many employees, many employees WORK at one store.
    One store is MANAGED by one employee, one employee MANAGES one store.

### Transactions

    One salesperson PERFORMS many transactions, many transactions are PERFORMED by one salesperson.
    One customer PARTICIPATES in many transactions, many transactions INVOLVE one customer.
    Many transactions OCCUR at one store, One store can HAVE many transactions.

### Product List

    One product is CONTAINED in many product lists, many product lists CONTAIN one product.
    One transaction HAS many product lists, many product lists ARE IN one transaction

### Subtypes
    Salesperson is a subtype of employee.
    Home is a subtype of customer.
    Business is a subtype of customer.