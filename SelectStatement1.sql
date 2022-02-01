--requirments:
--create 2 lists
    --one must display all the properties of products available in the SalesLT.Product Table
    --one must display the product ID, pirce, and weight properties of the product.
--query 1
 SELECT * FROM SalesLT.Product;

 --query 2
SELECT ProductID, Name, ListPrice, Weight
FROM SalesLT.Product;