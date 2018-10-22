CREATE VIEW SKI_CUST1 AS
    SELECT  FirstName,
            LastName,
            Street,
            City,
            State,
            Zipcode,
            InvoiceNumber
    FROM CUSTOMER JOIN INVOICE
    USING (CustomerID);
    
CREATE VIEW SKI_CUST2 AS
    SELECT  FirstName,
            LastName,
            Street,
            City,
            State,
            Zipcode,
            ProductID
    FROM SKI_CUST1 JOIN INVOICE_LINE
    USING (InvoiceNumber);
    
CREATE VIEW SKI_CUST3 AS
    SELECT  FirstName,
            LastName,
            Street,
            City,
            State,
            Zipcode,
            Category
    FROM SKI_CUST2 JOIN PRODUCT
    USING (ProductID);
    
CREATE VIEW SKI_CUST AS
    SELECT DISTINCT FirstName,
                    LastName,
                    Street,
                    City,
                    State,
                    Zipcode
    FROM SKI_CUST3
    WHERE CATEGORY = ‘Ski’ ;
    
