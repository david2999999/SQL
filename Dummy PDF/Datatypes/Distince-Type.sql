CREATE DISTINCT TYPE USdollar AS DECIMAL (9,2);
CREATE DISTINCT TYPE Euro AS DECIMAL (9,2);

CREATE TABLE USInvoice (
    InvID INTEGER PRIMARY KEY,
    CustID INTEGER,
    EmpID INTEGER,
    TotalSale USdollar,
    Tax USdollar,
    Shipping USdollar,
    GrandTotal USdollar
) ;

CREATE TABLE EuroInvoice (
    InvID INTEGER PRIMARY KEY,
    CustID INTEGER,
    EmpID INTEGER,
    TotalSale Euro,
    Tax Euro,
    Shipping Euro,
    GrandTotal Euro
) ;