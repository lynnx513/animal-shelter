
-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------
INSERT INTO product_category(category_name) VALUES ('CATS');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('CAT-55884210', 'Sally', 'Domestic Shorthair/Mix',
'assets/images/products/cats/cats-01.jpg'
,1,1,0,2, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('CAT-55952509', 'Midnight', 'Domestic Shorthair/Mix',
        'assets/images/products/cats/cats-02.jpg'
           ,1,1,0,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('CAT-56071192', 'Ginger', 'Domestic Shorthair/Mix',
        'assets/images/products/cats/cats-03.jpg'
           ,1,1,0,2, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('CAT-56075231', 'Pixie', 'Domestic Shorthair/Mix',
        'assets/images/products/cats/cats-04.jpg'
           ,1,1,0,2, NOW());

