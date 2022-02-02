--requirements:
--target a different set of profucts to a different set of customers
--base targeting on list price
--add new column named ProductTarget
--Group Customers based on
    --list price less than $1000 as low end
    --list price between $1000 and $2000 as mid end
    --list price between $2000 and $3000 as high end
    --list price greater than $3000 as permium
SELECT p.ProductID, p.Name, p.ListPrice,
    CASE
        WHEN p.ListPrice < 1000 THEN 'Low end'
        WHEN p.ListPrice BETWEEN 1000 AND 2000 THEN 'Mid end'
        WHEN p.ListPrice BETWEEN 2000 AND 3000 THEN 'High end'
        WHEN p.ListPrice > 3000 THEN 'Premium'
    END AS ProductTarget
FROM SalesLT.Product p;