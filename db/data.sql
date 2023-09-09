DELETE FROM suppliers;
INSERT INTO suppliers VALUE
          (501, 'ABC Traders', '88881111'), 
          (502, 'XYZ Company', '88882222'), 
          (503, 'QQ Corp', '88883333');


DELETE FROM products;
INSERT INTO products (productCode, name, quantity, price) VALUES
        ('PEC', 'Pencil 2B', 10000, 0.48),
        ('PEN', 'Pencil 2H', 8000, 0.49),
        ('PEN', 'Pencil 2C', 8000, 0.49);
INSERT INTO products (productCode, name) VALUES ('PEC', 'Pencil HB');
INSERT INTO products (productCode, name) VALUES ('PEC', 'Pencil HB2');
INSERT INTO products (productCode, name) VALUES ('DEL', 'Pencil HB2');

INSERT INTO products_suppliers VALUES (1, 501), (2, 501),
       (3, 501), (4, 502), (1, 503);

