--Requirements:
--The London office needs all sales orders made on 01/06/2004
--Set the date format to British (dd/mm/yyy)
--Display details of products ordered on 01/06/2004
SET DATEFORMAT dmy;
--Next
SELECT OrderDate, DueDate, ShipDate
FROM SalesLT.SalesOrderHeader
WHERE OrderDate = '01/06/2004';