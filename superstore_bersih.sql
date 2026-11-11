USE superstore;

SELECT * 
FROM `superstore baru`;

SELECT COUNT(*) FROM `superstore baru`;

CREATE TABLE sup_staging
LIKE `superstore baru`;

SELECT * 
FROM sup_staging;

INSERT sup_staging
SELECT *
FROM `superstore baru`;

-- 1. Mengecek data mana saja yang duplikat
SELECT *
FROM sup_staging;

WITH DuplicateCTE AS (
    SELECT *,
        ROW_NUMBER() OVER(
            PARTITION BY 
                `Row ID`, 
                `Order ID`, 
                `Order Date New`, 
                `Ship Date New`, 
                `Ship Mode`, 
                `Customer ID`, 
                `Customer Name`, 
                `Segment`, 
                `Country`, 
                `City`, 
                `State`, 
                `Postal Code`, 
                `Region`, 
                `Product ID`, 
                `Category`, 
                `Sub-Category`, 
                `Product Name`, 
                `Sales`
            ORDER BY (SELECT NULL)
        ) AS row_num
    FROM sup_staging
)
SELECT * 
FROM DuplicateCTE 
WHERE row_num > 1;

-- Melihat tipe data setiap kolom
DESCRIBE sup_staging;

-- 2. Standarisasi data (menemukan masalah di data lalu perbaiki)
CREATE TABLE sup_staging2 LIKE sup_staging;

INSERT INTO sup_staging2 
SELECT * FROM sup_staging;

SET SQL_SAFE_UPDATES = 0;

-- Melihat spasi di setiap kolom nya
UPDATE sup_staging2
SET `Row ID` = TRIM(`Row ID`),
    `Order ID` = TRIM(`Order ID`),
    `Order Date New` = TRIM(`Order Date New`),
    `Ship Date New` = TRIM(`Ship Date New`),
    `Ship Mode` = TRIM(`Ship Mode`),
    `Customer ID` = TRIM(`Customer ID`),
    `Customer Name` = TRIM(`Customer Name`),
    `Segment` = TRIM(`Segment`),
    `Country` = TRIM(`Country`),
    `City` = TRIM(`City`),
    `State` = TRIM(`State`),
    `Postal Code` = TRIM(`Postal Code`),
    `Region` = TRIM(`Region`),
    `Product ID` = TRIM(`Product ID`),
    `Category` = TRIM(`Category`),
    `Sub-Category` = TRIM(`Sub-Category`),
    `Product Name` = TRIM(`Product Name`),
    `Sales` = TRIM(`Sales`);
    
-- Melihat data setelah di trim
SELECT * 
FROM sup_staging2;

-- Mengecek nilai NULL
SELECT * 
FROM sup_staging2 
WHERE `Order ID` IS NULL 
   OR `Sales` IS NULL 
   OR `Customer ID` IS NULL;
   
DESCRIBE sup_staging2;

-- Ubah tipe data order & ship date
ALTER TABLE sup_staging2 
MODIFY COLUMN `Order Date New` DATE,
MODIFY COLUMN `Ship Date New` DATE;

-- Mengecek statistik
SELECT 
    COUNT(*) AS Total_Rows,
    SUM(Sales) AS Total_Sales,
    AVG(Sales) AS Average_Sales,
    MIN(Sales) AS Min_Sales,
    MAX(Sales) AS Max_Sales
FROM sup_staging2;

-- Ubah nama tabel untuk di visualisasikan atau nama final nya
RENAME TABLE sup_staging2 TO superstore_cleaned;

SELECT * 
FROM superstore_cleaned;