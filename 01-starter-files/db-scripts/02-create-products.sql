-- -----------------------------------------------------
-- Schema full-stack-ecommerce
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `animal-shelter`;

CREATE SCHEMA `animal-shelter`;
USE `animal-shelter` ;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animal-shelter`.`product_category` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `category_name` VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`))
ENGINE=InnoDB
AUTO_INCREMENT = 1;

-- -----------------------------------------------------
-- Table `full-stack-ecommerce`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `animal-shelter`.`product` (
  `id` BIGINT(20) NOT NULL AUTO_INCREMENT,
  `sku` VARCHAR(255) DEFAULT NULL,
  `name` VARCHAR(255) DEFAULT NULL,
  `description` VARCHAR(255) DEFAULT NULL,
  `unit_price` DECIMAL(13,2) DEFAULT NULL,
  `image_url` VARCHAR(255) DEFAULT NULL,
  `active` BIT DEFAULT 1,
  `units_in_stock` INT(11) DEFAULT NULL,
   `date_created` DATETIME(6) DEFAULT NULL,
  `last_updated` DATETIME(6) DEFAULT NULL,
  `category_id` BIGINT(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) 
ENGINE=InnoDB
AUTO_INCREMENT = 1;


-- -----------------------------------------------------
-- Add sample data
-- -----------------------------------------------------

INSERT INTO product_category(category_name) VALUES ('DOGS');

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
unit_price, category_id, date_created)
VALUES ('DOG-55852569', 'Ollie', 'Terrier, American Pit Bull/Mix',
'assets/images/products/dogs/dogs-05.jpg'
,1,1,19.99,1, NOW());


INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('DOG-55852569', 'Ollie', 'Terrier, American Pit Bull/Mix',
        'assets/images/products/dogs/dogs-05.jpg'
           ,1,1,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('DOG-52710106', 'Wiley', 'Mixed Breed, Large',
        'assets/images/products/dogs/dogs-01.jpg'
           ,1,1,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('DOG-54533176', 'Howler', 'Siberian Husky/Mix',
        'assets/images/products/dogs/dogs-02.jpg'
           ,1,1,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('DOG-44029112', 'Leela', 'Retriever/Mix',
        'assets/images/products/dogs/dogs-03.jpg'
           ,1,1,19.99,1, NOW());

INSERT INTO product (sku, name, description, image_url, active, units_in_stock,
                     unit_price, category_id, date_created)
VALUES ('DOG-55419966', 'Theon', 'Terrier, American Staffordshire/Mix',
        'assets/images/products/dogs/dogs-04.jpg'
           ,1,1,19.99,1, NOW());
