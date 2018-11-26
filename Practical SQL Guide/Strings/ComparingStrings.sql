-- This instruction selects all customers with a name starting with the letter "E".
SELECT * FROM Customers
WHERE name LIKE 'E%';

-- This instruction selects all customers with a name ending with the letter "a".
SELECT * FROM Customers
WHERE name LIKE '%a';

--This instruction selects all customers with a name containing the character "e".
SELECT * FROM Customers
WHERE name LIKE '%e%';

-- This instruction selects all customers with a name containing the string "lena" and starting by
-- any character
SELECT * FROM Customers
WHERE name LIKE '_lena';

-- This instruction selects all customers with a name containing the string initiated by "E" with a
-- third character equal to "e" and last character equal to "a"
SELECT * FROM Customers
WHERE name LIKE 'E_e_a';