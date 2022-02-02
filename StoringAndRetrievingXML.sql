--Requirements:
--Include new details by altering the SalesLT.CustomerDetails table.
--Structure the data using XML to ensure flexible modification and update.
ALTER TABLE SalesLT.CustomerDetails
ADD OtionalInfo XML NULL;
--Close editor
--Insert new row to SalesLT.CustomerDetails
INSERT INTO SalesLT.CustomerDetails
VALUES (NEWID(), 2, CONVERT(VARBINARY(MAX), ''),
'<personal>
    <spouse>Melinda</spouse>
    <child id="1">Jack</child>
</personal>');
--Close Editor
--View All records from SalesLT.CustomerDetails tbl.
Select * FROM SalesLT.CustomerDetails;
--View assigned XML on results tab