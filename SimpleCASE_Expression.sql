--requirements:
--obtain a list of customers and their gender, derived from the salutation column.
--display gender of customers as 'male' or 'female' in new 'gender' column
SELECT CustomerID, Title, FirstName, LastName,
    CASE Title
        WHEN 'Mr.' THEN 'Male'
        WHEN 'Ms.' THEN 'Female'
        ELSE 'Unknown'
    END AS Gender
FROM SalesLT.Customer;