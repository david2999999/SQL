/* Create a UDT named MusicCDudt */
CREATE TYPE MusicCDudt AS
    /* Specify attributes */
    Title CHAR(40),
    Cost DECIMAL(9,2),
    SuggestedPrice DECIMAL(9,2)
    /* Allow for subtypes */
    NOT FINAL;
    
CREATE TYPE RockCDudt UNDER MusicCDudt NOT FINAL;
CREATE TYPE HeavyMetalCDudt UNDER RockCDudt FINAL;

CREATE TABLE METALSKU (
    Album HeavyMetalCDudt,
    SKU INTEGER
);

BEGIN
    /* Declare a temporary variable a */
    DECLARE a = HeavyMetalCDudt ;
    
    /* Execute the constructor function */
    SET a = HeavyMetalCDudt() ;
    
    /* Execute first mutator function */
    SET a = a.title(‘Edward the Great’) ;
    /* Execute second mutator function */
    SET a = a.cost(7.50) ;
    /* Execute third mutator function */
    SET a = a.suggestedprice(15.99) ;
    
    INSERT INTO METALSKU VALUES (a, 31415926) ;
END