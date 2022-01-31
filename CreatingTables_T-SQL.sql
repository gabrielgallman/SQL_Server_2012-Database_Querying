--Creating Tables with T-SQL
--requirements:
--EmplyeeID with int data type and a NOT NULL constraint
--AddressLine1 with a max char length of 60
--AddressLine2 with a max char length of 60
--City with a mac char length of 30
--StateProvince with a max char length of 50
--CountryRegion with a max char length of 50

CREATE TABLE SalesLT.Employee
(
    EmplyeeID INT NOT NULL,
    AddressLine1 VARCHAR(60),
    AddressLine2 VARCHAR(60),
    City VARCHAR(30),
    StateProvince VARCHAR(50),
    CountryRegion VARCHAR(50)
);