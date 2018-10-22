
-- By using the CREATE SCHEMA
-- statement, you can not only create a schema, but also identify its owner and
-- specify a default character set.

CREATE SCHEMA SALES
    AUTHORIZATION SALES_MGR
    DEFAULT CHARACTER SET ASCII_FULL;