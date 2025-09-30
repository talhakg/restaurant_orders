-- drop old tables if they exist to recreate them clearly
-- if we rerun the schema file it won't throw an error now
DROP TABLE IF EXISTS customers;
DROP TABLE IF EXISTS menu;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS order_items;

-- create the nessessary tables
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name TEXT NOT NULL,
    phone TEXT
);

CREATE TABLE menu (
    item_id INT PRIMARY KEY,
    name TEXT NOT NULL,
    price REAL NOT NULL
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT NOT NULL,
    status TEXT NOT NULL DEFAULT 'OPEN', -- opened, paid, and cancelled
    opened TEXT NOT NULL -- text timestamp
);

CREATE TABLE order_items (
    order_item_id INT PRIMARY KEY,
    order_id INT NOT NULL,
    item_id INT NOT NULL,
    qty INT NOT NULL,
    unit_price REAL NOT NULL
);