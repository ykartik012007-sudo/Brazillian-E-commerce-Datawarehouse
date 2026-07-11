
USE brazilian_e_commerce_data_warehouse;
GO

-- Creating table bronze.archive_olist_customers_dataset
IF OBJECT_ID('bronze.archive_olist_customers_dataset', 'U') IS NOT NULL
	DROP TABLE bronze.archive_olist_customers_dataset; -- if table exist then drop it
CREATE TABLE bronze.archive_olist_customers_dataset
(
	customer_id NVARCHAR(100),
	customer_unique_id NVARCHAR(100),
	customer_zip_code_prefix NVARCHAR(10),
	customer_city NVARCHAR(50),
	customer_state NVARCHAR(50)
);
GO

-- Creating table bronze.archive_olist_order_items_dataset
IF OBJECT_ID('bronze.archive_olist_order_items_dataset', 'U') IS NOT NULL
	DROP TABLE bronze.archive_olist_order_items_dataset; -- If the table exists, then drop it.
CREATE TABLE bronze.archive_olist_order_items_dataset
(
	order_id NVARCHAR(100),
	order_item_id INT,
	product_id NVARCHAR(100),
	seller_id NVARCHAR(100),
	shipping_limit_date DATETIME2,
	price DECIMAL(10,2),
	freight_value DECIMAL(10,2)
);
GO

-- Creating table bronze.archive_olist_order_payments_dataset
IF OBJECT_ID('bronze.archive_olist_order_payments_dataset', 'U') IS NOT NULL
	DROP TABLE bronze.archive_olist_order_payments_dataset; -- If the table exists, then drop it.
CREATE TABLE bronze.archive_olist_order_payments_dataset
(
	order_id NVARCHAR(100),
	payment_sequential INT,
	payment_type NVARCHAR(50),
	payment_installments INT,
	payment_value DECIMAL(10,2)
);
GO

-- Creating table bronze.archive_olist_order_reviews_dataset
IF OBJECT_ID('bronze.archive_olist_order_reviews_dataset', 'U') IS NOT NULL
	DROP TABLE bronze.archive_olist_order_reviews_dataset; -- If the table exists, then drop it.
CREATE TABLE bronze.archive_olist_order_reviews_dataset
(
	review_id NVARCHAR(100),
	order_id NVARCHAR(100),
	review_score INT,
	review_comment_title NVARCHAR(50),
	review_comment_message NVARCHAR(MAX),
	review_creation_date DATETIME2,
	review_answer_timestamp DATETIME2
);
GO

-- Creating table bronze.archive_olist_orders_dataset
IF OBJECT_ID('bronze.archive_olist_orders_dataset', 'U') IS NOT NULL
	DROP TABLE bronze.archive_olist_orders_dataset; -- If the table exists, then drop it.
CREATE TABLE bronze.archive_olist_orders_dataset
(
	order_id NVARCHAR(100),
	customer_id NVARCHAR(100),
	order_status NVARCHAR(50),
	order_purchase_timestamp DATETIME2,
	order_approved_at DATETIME2,
	order_delivered_carrier_date DATETIME2,
	order_delivered_customer_date  DATETIME2,
	order_estimated_delivery_date DATETIME2
);
GO

-- Creating table bronze.archive_olist_products_dataset
IF OBJECT_ID('bronze.archive_olist_products_dataset', 'U') IS NOT NULL
	DROP TABLE bronze.archive_olist_products_dataset; -- If the table exists, then drop it.
CREATE TABLE bronze.archive_olist_products_dataset
(
	product_id NVARCHAR(100),
	product_category_name NVARCHAR(50),
	product_name_lenght INT,
	product_description_lenght INT,
	product_photos_qty INT,
	product_weight_g INT,
	product_length_cm INT,
	product_height_cm INT,
	product_width_cm INT
);
GO

-- Creating table bronze.archive_olist_sellers_dataset
IF OBJECT_ID('bronze.archive_olist_sellers_dataset', 'U') IS NOT NULL
	DROP TABLE bronze.archive_olist_sellers_dataset; -- If the table exists, then drop it.
CREATE TABLE bronze.archive_olist_sellers_dataset
(
	seller_id NVARCHAR(100),
	seller_zip_code_prefix NVARCHAR(10),
	seller_city NVARCHAR(100),
	seller_state NVARCHAR(10)
);

