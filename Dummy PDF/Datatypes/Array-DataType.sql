-- For example, say your organization
-- needs to be able to contact customers whether they’re at work, at
-- home, or on the road. You want to maintain multiple telephone numbers for
-- them. You can do this by declaring the Phone attribute as an array

CREATE TABLE CUSTOMER (
    CustID INTEGER PRIMARY KEY,
    LastName CHARACTER VARYING (25),
    FirstName CHARACTER VARYING (20),
    Address addr_typ,
    Phone CHARACTER VARYING (15) ARRAY [3]
) ;

CREATE ROW TYPE addr_typ (
    Street CHARACTER VARYING (25),
    City CHARACTER VARYING(20),
    State CHARACTER (2),
    PostalCode CHARACTER VARYING (9)
);