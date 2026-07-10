/*
    Script  : This script creates the database 'brazilian_e_commerce_data_warehouse'
              and the Bronze, Silver, and Gold schemas.

    Purpose : Store source data in the database and prepare it for business analysis.
*/

CREATE DATABASE brazilian_e_commerce_data_warehouse;
GO

USE brazilian_e_commerce_data_warehouse;
GO

CREATE SCHEMA bronze;
GO

CREATE SCHEMA silver;
GO

CREATE SCHEMA gold;
GO
