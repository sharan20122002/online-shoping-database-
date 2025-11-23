-- insert_data.sql
-- Sample data for Online Shopping Database

-- Categories
INSERT INTO Categories (name, description) VALUES ('Electronics', 'Phones, laptops, accessories');
INSERT INTO Categories (name, description) VALUES ('Clothing', 'Men and Women clothing');
INSERT INTO Categories (name, description) VALUES ('Home', 'Home appliances and decor');

-- Users
INSERT INTO Users (name, email, password_hash) VALUES ('Alice', 'alice@example.com', 'hash_alice');
INSERT INTO Users (name, email, password_hash) VALUES ('Bob', 'bob@example.com', 'hash_bob');

-- Products
INSERT INTO Products (name, description, price, stock, category_id) VALUES ('Smartphone X', '5.8 inch display, 128GB', 19999.00, 50, 1);
INSERT INTO Products (name, description, price, stock, category_id) VALUES ('Laptop Pro', '16GB RAM, 512GB SSD', 79999.00, 20, 1);
INSERT INTO Products (name, description, price, stock, category_id) VALUES ('T-Shirt', '100% Cotton, Size M', 499.00, 200, 2);
INSERT INTO Products (name, description, price, stock, category_id) VALUES ('Blender', '500W kitchen blender', 2999.00, 30, 3);

-- Orders
INSERT INTO Orders (user_id, status, total_amount) VALUES (1, 'COMPLETED', 20598.00);
INSERT INTO Orders (user_id, status, total_amount) VALUES (2, 'PENDING', 499.00);

-- OrderItems (order 1: Alice bought Smartphone X and Blender)
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES (1, 1, 1, 19999.00);
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES (1, 4, 1, 2999.00);

-- OrderItems (order 2: Bob bought a T-Shirt)
INSERT INTO OrderItems (order_id, product_id, quantity, unit_price) VALUES (2, 3, 1, 499.00);

-- Payments
INSERT INTO Payments (order_id, amount, method, status) VALUES (1, 20598.00, 'CARD', 'COMPLETED');
-- order 2 not yet paid

