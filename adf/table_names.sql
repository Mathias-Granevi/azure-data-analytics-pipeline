-- Get the names of the tables in the database for adf pipeline
SELECT 
    TABLE_SCHEMA AS SchemaName, 
    TABLE_NAME AS TableName
FROM 
    INFORMATION_SCHEMA.TABLES
WHERE 
    TABLE_NAME IN (
        'Customer',
        'SalesOrderHeader',
        'SalesOrderDetail',
        'Product',
        'ProductSubcategory',
        'ProductCategory',
        'Person',
		'SalesTerritory'
    )
