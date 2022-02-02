--Requirements
--Create an XML Schema to ensure data in XML column is valid and only has desired information.
--Insert a new record in the SalesLT.CustomerDetails tbl.
INSERT INTO SalesLT.CustomerDetails
VALUES (NEWID(), 3, CONVERT(VARBINARY(MAX), ''),
'<personal>
    <spouse>Rose</spouse>
    <child id+"1">Bill</child>
    <weather>Sunny</weather>
</personal>');
--Execute code, verify new record, close editor
--Create XML schema named PersonalInfoSchema
CREATE XML SCHEMA COLLECTION PersonalInfoSchema AS
'<?xml version="1.0" encoding="UTF-8"?>
<xsd:schema elementFormDefault="qualified" xmlns:xsd="http://www.w3.org/2001/XMLSchema" >
    <xsd:element name="personal">
        <xsd:complexType>
            <xsd:sequence>
                <xsd:element name="spouse" type="xsd:string"
minOccurs="0" maxOccurs="1" />
                <xsd:element name="child" minOccurs="0"
maxOccurs="unbounded">
                    <xsd:complexType mixed="true">
                        <xsd:attribute name="id" type="xd:integer" />
                    </xsd:complexType>
                </xsd:element>
            </xsd:sequence>
        </xsd:complexType>
    </xsd:element>
</xsd:schema>';
--Verify completion, close editor
--Attach XML schema to the SalesLT.CustomerDetails
ALTER TABLE SalesLT.CustomerDetails
ALTER COLUMN OptionalInfo XML(PersonalInfoSchema);
--Query fails due to the element named weather.
--Delete the record with customer ID value as 3 from the SalesLT.CustomerDetails table
DELETE FROM SalesLT.CustomerDetails WHERE CustomerID=3;
--CloseEditor
--Insert the correct record in SalesLT.CustomerDetails tbl as defined in XML schema.
INSERT INTO SalesLT.CustomerDetails
VALUES (NEWID(), 3, CONVERT(VARBINARY(MAX),''),
'<personal>
    <spouse>Rose</spouse>
    <child id="1">Bill</child>
</personal>');
--Verify success
--Close editor