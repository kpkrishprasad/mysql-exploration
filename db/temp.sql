CREATE VIEW supplier_view
       AS
       SELECT suppliers.name as `Supplier Name`, products.name as `Product Name`
       FROM products_suppliers 
          JOIN suppliers ON products.productID = products_suppliers.productID
          JOIN products_suppliers ON suppliers.supplierID = products_suppliers.supplierID