
    CREATE TABLE IF NOT EXISTS suppliers (
         supplierID  INT UNSIGNED  NOT NULL AUTO_INCREMENT, 
         name        VARCHAR(30)   NOT NULL DEFAULT '', 
         phone       CHAR(8)       NOT NULL DEFAULT '',
         PRIMARY KEY (supplierID)
    );

    CREATE TABLE IF NOT EXISTS products (
         productID    INT UNSIGNED  NOT NULL AUTO_INCREMENT,
         productCode  CHAR(3)       NOT NULL DEFAULT '',
         name         VARCHAR(30)   NOT NULL DEFAULT '',
         quantity     INT UNSIGNED  NOT NULL DEFAULT 0,
         price        DECIMAL(7,2)  NOT NULL DEFAULT 99999.99,
         PRIMARY KEY  (productID)
    );
    
     CREATE TABLE IF NOT EXISTS products_suppliers (
         productID   INT UNSIGNED  NOT NULL,
         supplierID  INT UNSIGNED  NOT NULL,
                     -- Same data types as the parent tables
         PRIMARY KEY (productID, supplierID),
                     -- uniqueness
         FOREIGN KEY (productID)  REFERENCES products  (productID),
         FOREIGN KEY (supplierID) REFERENCES suppliers (supplierID)
     );

     CREATE TABLE product_details (
          productID  INT UNSIGNED   NOT NULL,
                     -- same data type as the parent table
          comment    TEXT  NULL,
                     -- up to 64KB
          PRIMARY KEY (productID),
          FOREIGN KEY (productID) REFERENCES products (productID)
     );

    -- ALTER TABLE products ADD COLUMN supplierID INT UNSIGNED NOT NULL DEFAULT 0;

    -- ALTER TABLE products ADD FOREIGN KEY (supplierID) REFERENCES suppliers (supplierID);

     
