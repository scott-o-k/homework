--
-- To use this file do either of:
-- - copy/paste all the following code into the mysql client (in terminal)
-- - $ cat schema.sql | mysql -u root
--

DROP DATABASE IF EXISTS pos;
CREATE DATABASE pos;
USE pos;

--
-- Create database tables
--
CREATE TABLE customer (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(255),
    gender VARCHAR(50),
    customer_since DATE
);

CREATE TABLE item (
    id INT auto_increment primary key,
    name VARCHAR(100),
    price DECIMAL(7,2)
);

CREATE TABLE invoice (
    id INT AUTO_INCREMENT PRIMARY KEY,
    customer_id INT NOT NULL,
    created_at TIMESTAMP
);

CREATE TABLE invoice_item (
    id INT AUTO_INCREMENT PRIMARY KEY,
    invoice_id INT NOT NULL,
    item_id INT NOT NULL,
    quantity INT
);

--
-- Insert sample data
--

INSERT INTO customer (first_name, last_name, email, phone, customer_since)
    VALUES ('moe', 'o\'dools', 'moe@moes.com', '111-111-1111', CURDATE());

INSERT INTO item (name, price) VALUES ('hammer', 17.95);

INSERT INTO invoice (customer_id, created_at) VALUES (1, NOW());

INSERT INTO invoice_item (invoice_id, item_id, quantity) VALUES (1, 1, 13);

