CREATE ROW TYPE addr_typ (
    Street CHARACTER VARYING (25),
    City CHARACTER VARYING(20),
    State CHARACTER (2),
    PostalCode CHARACTER VARYING (9)
);

CREATE TABLE CUSTOMER (
    CustID INTEGER PRIMARY KEY,
    LastName CHARACTER VARYING (25),
    FirstName CHARACTER VARYING (20),
    Address addr_typ,
    Phone CHARACTER VARYING (15)
) ;