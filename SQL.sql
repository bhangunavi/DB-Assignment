CREATE TABLE product (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    SKU VARCHAR(30),
    category_id INT,
    inventory_id INT,
    price DECIMAL,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP,
    discount_id INT,
    description TEXT
);

CREATE TABLE product_category (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE product_inventory (
    id INT PRIMARY KEY,
    quantity INT,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);

CREATE TABLE discount (
    id INT PRIMARY KEY,
    name VARCHAR(30),
    inventory_id INT,
    discount_percentage DECIMAL,
    created_at TIMESTAMP,
    modified_at TIMESTAMP,
    deleted_at TIMESTAMP
);


ALTER TABLE product ADD FOREIGN KEY (category_id) REFERENCES product_category(id);
ALTER TABLE product ADD FOREIGN KEY (inventory_id) REFERENCES product_inventory(id);
ALTER TABLE product ADD FOREIGN KEY (discount_id) REFERENCES discount(id);
