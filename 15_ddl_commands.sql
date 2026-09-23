CREATE DATABASE IF NOT EXISTS ddl_demo;
USE ddl_demo;

CREATE TABLE products (
    product_id INT PRIMARY KEY AUTO_INCREMENT,
    name       VARCHAR(100) NOT NULL,
    price      DECIMAL(10,2)
);

DESCRIBE products;

ALTER TABLE products ADD COLUMN stock INT DEFAULT 0;

ALTER TABLE products ADD COLUMN category VARCHAR(50) AFTER name;

ALTER TABLE products MODIFY COLUMN name VARCHAR(150) NOT NULL;

ALTER TABLE products RENAME COLUMN stock TO quantity;

ALTER TABLE products DROP COLUMN category;

ALTER TABLE products RENAME TO items;
RENAME TABLE items TO products;

DESCRIBE products;

DROP TABLE IF EXISTS products;
DROP DATABASE IF EXISTS ddl_demo;
