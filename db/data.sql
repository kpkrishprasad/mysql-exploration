DELETE FROM suppliers;
INSERT INTO suppliers VALUE
          (501, 'ABC Traders', '88881111'), 
          (502, 'XYZ Company', '88882222'), 
          (503, 'QQ Corp', '88883333');


DELETE FROM products;
INSERT INTO products (productCode, name, quantity, price, supplierID) VALUES
        ('PEC', 'Pencil 2B', 10000, 0.48, 501),
        ('PEN', 'Pencil 2H', 8000, 0.49, 501),
        ('PEN', 'Pencil 2C', 8000, 0.49, 501);
INSERT INTO products (productCode, name, supplierID) VALUES ('PEC', 'Pencil HB', 502);
INSERT INTO products (productCode, name, supplierID) VALUES ('PEC', 'Pencil HB2', 503);
INSERT INTO products (productCode, name, supplierID) VALUES ('DEL', 'Pencil HB2', 503);




