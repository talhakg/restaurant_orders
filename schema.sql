-- create the nessessary tables
CREATE TABLE customers (
    customer_id INT,
    name TEXT,
    phone TEXT
);

CREATE TABLE menu (
    item_id INT,
    name TEXT,
    price REAL
);

CREATE TABLE orders (
    order_id INT,
    customer_id INT,
    status TEXT, -- opened, paid, and cancelled
    opened TEXT -- text timestamp
);

CREATE TABLE order_items (
    order_item_id INT,
    order_id INT,
    item_id INT,
    qty INT,
    unit_price REAL
);