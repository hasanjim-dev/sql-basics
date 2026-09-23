CREATE DATABASE IF NOT EXISTS constraints_demo;
USE constraints_demo;

DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customers;

CREATE TABLE customers (
    customer_id INT AUTO_INCREMENT,
    name        VARCHAR(50)  NOT NULL,
    email       VARCHAR(100) UNIQUE,
    age         INT CHECK (age >= 18),
    country     VARCHAR(50)  DEFAULT 'Bangladesh',
    PRIMARY KEY (customer_id)
);

CREATE TABLE orders (
    order_id    INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT NOT NULL,
    amount      DECIMAL(10,2) CHECK (amount > 0),
    status      VARCHAR(20) DEFAULT 'pending',
    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
        ON DELETE CASCADE
        ON UPDATE CASCADE
);

INSERT INTO customers (name, email, age) VALUES ('Rahim', 'rahim@example.com', 25);
INSERT INTO customers (name, email, age, country) VALUES ('Sadia', 'sadia@example.com', 30, 'India');
INSERT INTO orders (customer_id, amount) VALUES (1, 1500.00);

SELECT * FROM customers;
SELECT * FROM orders;

ALTER TABLE customers ADD CONSTRAINT chk_name_len CHECK (CHAR_LENGTH(name) >= 2);
ALTER TABLE customers DROP CHECK chk_name_len;

ALTER TABLE customers ADD CONSTRAINT uq_customers_name UNIQUE (name);
ALTER TABLE customers DROP INDEX uq_customers_name;

ALTER TABLE orders DROP FOREIGN KEY fk_orders_customer;
ALTER TABLE orders ADD CONSTRAINT fk_orders_customer
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id);
