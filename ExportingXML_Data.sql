--Requirements:
--Export data from the SalesLT.Customer table to a standard format, to import in custom software for analysis
--Use XML
WITH XMLNamespaces('http://adventureworks.com/ns/customer/ AS customer')
SELECT *
FROM SalesLT.Customer
FOR XML RAW('customer');
--In the resuls tab, view exported data via the hyperlink.
--Close editor