--Requirements:
--Store photographs outside of the AdventureWorksLT2012 database, to save space.
--
--GUI steps to prepare the Database:
    --Enable FILESTREAM in SSMS
    --Restart MSSQLSERVER service
--Code
--Enable FILESTREAM on AdventureWorksLT2012
EXEC sp_configure filestream_access_level, 2
RECONFIGURE
--Specify the File Group 'FS05' to use FILESTREAM.
ALTER DATABASE AdventureWorksLT2012
ADD FILEGROUP FS05
    CONTAINS FILESTREAM
--Create C:\temp
--Set the directory for the FILESTREAM
ALTER DATABASE AdventureWorksLT2012
ADD FILE
    (NAME = 'AdventureWorksLT2012_Group', FILENAME = 'C:\temp\FS')
    TO FILEGROUP FS05;
--Create a table named SalesLT.CustomerDetails and add the required columns
CREATE TABLE SalesLT.CustomerDetails (
    FileID UNIQUEIDENTIFIER NOT NULL UNIQUE ROWGUIDCOL,
    CustomerID IS NOT NULL,
CustomerPhoto VARBINARY (MAX) FILESTREAM NULL
);
--Insert a new row in SalesLT.CustomerDetails table.
INSERT INTO SalesLT.CustomerDetails (FileID, CustomerID, CustomerPhoto)
SELECT
    NEWID() AS FileID,
    1 AS CustomerID,
    * FROM OPENROWSET(BULK 'C:\temp\customer.jpg', SINGLE_BLOB) AS
CustomerPhoto;
--Verify that the pointer is stored locally.