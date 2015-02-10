CREATE TABLE customer (
    id int auto_increment primary key,
    first_name varchar(50),
    last_name varchar(50),
    email varchar(255),
    phone varchar(50),
    customer_since date
);

CREATE TABLE item (
    id int auto_increment primary key,
    name varchar(100),
    price decimal(7,2)
);

CREATE TABLE invoice (
    id int auto_increment primary key,
    customer_id int NOT NULL,
    created_at timestamp
);

CREATE TABLE invoice_item (
    id int auto_increment primary key,
    invoice_id int NOT NULL
);
