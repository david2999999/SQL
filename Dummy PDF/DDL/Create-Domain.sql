-- Use the CREATE DOMAIN statement to apply constraints to column values.
-- The constraints you apply to a domain determine what objects the domain
-- can and cannot contain. You can create domains after you establish a
-- schema.

CREATE DOMAIN Age AS INTEGER
    CHECK (AGE > 20) ;