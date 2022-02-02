--Requirements:
--Alter the SalesLT.ExperiementalProducts table by adding these
--additional columns:
    --ProductCode with CHAR data type w/ length of 5.
    --Desc_EN with VARCHAR data type w/ max length of 200.
    --Desc_CN and Desc_JP with UNICODE string data type w/ max length of 200, ech to store Chinese
    --and Japanese decsriptions of the product.
ALTER TABLE SalesLT.ExperiementalProducts
ADD ProductCode CHAR(5), Desc_EN VARCHAR(200), Desc_CN NVARCHAR(200), Desc_JP NVARCHAR(200);
--Verify existence of columns in SalesLT.ExperimentalProducts > Columns