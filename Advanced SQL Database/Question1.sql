-- "I need help with a statement that will return distinct
-- records for the first three fields where all values in field four are
-- all equal to zero." 

SELECT col1, col2, col3
    FROM Foobar
    GROUP BY col1, col2, col3
HAVING MIN(col4) = MAX(col4) -- one value in table
    AND MIN(col4) = 0; -- has a zero 
    
SELECT col1, col2, col3
    FROM Foobar
    GROUP BY col1, col2, col3
HAVING MIN(col4) = MAX(col4)
    AND MIN(col4) = 0
    AND COUNT(*) = COUNT(col4); -- No NULL in the column 