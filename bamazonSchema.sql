DROP DATABASE IF EXISTS bamazon_DB;
CREATE DATABASE bamazon_DB;

USE bamazon_DB;

CREATE TABLE products(
    item_id INT NOT NULL AUTO_INCREMENT,
    product_name VARCHAR(50) NOT NULL,
    department_name VARCHAR(50) NOT NULL,
    price INT NOT NULL,
    stock_quanity INT NOT NULL,
    PRIMARY KEY (item_id)
);

-- Creates new rows
INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("MacBook Pro", "Electronics", 450, 1);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Beats Wireless 3", "Electronics", 85, 1);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Apple Watch Series 2", "Electronics", 150, 1);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Ikea Loveseat", "Home-goods", 350, 1);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("2011 Buick Regal", "Auto", 2500, 1);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("iPhone 8", "Electronics", 200, 1);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Ikea Floor Lamp", "Home-goods", 65, 1);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Sip Set- Holidays edition", "Home-goods", 25, 1);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Mini-hooper Game Set", "Toys", 60, 1);

INSERT INTO products (product_name, department_name, price, stock_quanity)
VALUES ("Uno", "Toys", 5, 1);



