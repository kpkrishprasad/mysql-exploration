DELETE FROM products;
INSERT INTO products (productCode, name, quantity, price) VALUES
        ('PEC', 'Pencil 2B', 10000, 0.48),
        ('PEN', 'Pencil 2H', 8000, 0.49),
        ('PEN', 'Pencil 2C', 8000, 0.49);
INSERT INTO products (productCode, name) VALUES ('PEC', 'Pencil HB');
INSERT INTO products (productCode, name) VALUES ('PEC', 'Pencil HB2');
INSERT INTO products (productCode, name) VALUES ('DEL', 'Pencil HB2');


SELECT * FROM products;
