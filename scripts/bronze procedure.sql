USE brazilian_e_commerce_data_warehouse
GO

TRUNCATE TABLE bronze.archive_olist_customers_dataset
BULK INSERT bronze.archive_olist_customers_dataset
FROM 'C:\Users\Raizen\Documents\Datasets\archive\olist_customers_dataset.csv'
WITH 
(
    FORMAT = 'CSV',
	FIELDTERMINATOR = ',',
    ROWTERMINATOR= '0x0a',
    FIRSTROW = 2,
    TABLOCK
)
GO

TRUNCATE TABLE bronze.archive_olist_order_items_dataset
BULK INSERT bronze.archive_olist_order_items_dataset
FROM 'C:\Users\Raizen\Documents\Datasets\archive\olist_order_items_dataset.csv'
WITH
(
    FORMAT = 'CSV',
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    FIRSTROW = 2,
    TABLOCK
)
