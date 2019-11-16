DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
    id INT NOT NULL AUTO_INCREMENT,
    item_id VARCHAR(100) NOT NULL,
    product_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    stock_quanity INT NOT NULL,
    PRIMARY KEY (id)
);

-- Creates new rows
INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES ("Used Laptop", "MacBook Pro", "Electronics", 450, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES ("Headphones", "Beats Wireless 3", "Electronics", 85, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES ("Watch", "Apple Watch Series 2", "Electronics", 150, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES ("Couch", "Ikea Loveseat", "Home-goods", 350, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES ("Used car", "2011 Buick Regal", "Auto", 2500, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES ("Used smartphone", "iPhone 8", "Electronics", 200, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES ("Brand new lamp", "Ikea Floor Lamp", "Home-goods", 65, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES ("Christmas mug set", "Sip Set- Holidays edition", "Home-goods", 25, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES ("Basketball game", "Mini-hooper Game Set", "Toys", 60, 1);

INSERT INTO products (item_id, product_name, department_name, price, stock_quanity)
VALUES ("Card game", "Uno", "Toys", 5, 1);



