--Requirements:
--In the AdventureWorksLT2012 batabase, create SalesLT.ExperimentalProducts
--table.
--The new table needs the following columns:
    --ExProdID with INT data types and a NOT NULL constriaint.
    --Weight with DECIMAL data type and precision and scale value of (10,2)
    --CostToMake with MONEY data type
    --SurfaceArea with FLOAT data type of precision 15
CREATE TABLE SalesLT.ExperimentalProducts
(
    ExProdID INT NOT NULL,
    Weight DECIMAL (10,2),
    CostToMake MONEY,
    SurfaceArea (15)
);
--Refresh the database node and nagvigate to the newly created table
--to verify its existance.