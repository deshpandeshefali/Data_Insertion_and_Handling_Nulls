-- Task 2: Data Insertion and Handling Nulls
-- Database: ecommerce_db

USE ecommerce_db;

-- Insert sample data into Category
INSERT INTO Category (Category_Name)
VALUES 
('Electronics'),
('Books'),
('Clothing'),
('Home Decor');

--  Insert data into Customers
INSERT INTO Customers (Name, Email, Phone, Address)
VALUES
('Rahul Sharma', 'rahul@gmail.com', '9876543210', 'Mumbai'),
('Sneha Patil', 'sneha@gmail.com', NULL, 'Pune'),
('Amit Verma', 'amitv@gmail.com', '9822012345', NULL),
('Priya Joshi', 'priya@gmail.com', '9988776655', 'Delhi');

--  Insert data into Products
INSERT INTO Products (Product_Name, Price, Stock, Category_ID)
VALUES
('Smartphone', 25000, 10, 1),
('Bluetooth Speaker', 4000, 25, 1),
('Novel Book', 450, 50, 2),
('T-Shirt', 800, 30, 3),
('Wall Clock', 1200, 15, 4);

--  Insert Orders
INSERT INTO Orders (Customer_ID, Order_Date, Total_Amount)
VALUES
(1, '2025-10-15', 29000),
(2, '2025-10-16', 1250),
(3, '2025-10-17', 450);

--  Insert Order_Details
INSERT INTO Order_Details (Order_ID, Product_ID, Quantity, Subtotal)
VALUES
(1, 1, 1, 25000),
(1, 2, 1, 4000),
(2, 5, 1, 1200),
(2, 4, 1, 800),
(3, 3, 1, 450);

--  Insert Payments
INSERT INTO Payments (Order_ID, Payment_Date, Payment_Mode, Amount)
VALUES
(1, '2025-10-15', 'Credit Card', 29000),
(2, '2025-10-16', 'Cash', 1250),
(3, '2025-10-17', 'UPI', 450);

--  UPDATE example (Change customer address)
UPDATE Customers
SET Address = 'Bangalore'
WHERE Customer_ID = 3;

--  DELETE example (Remove a cancelled order)
DELETE FROM Orders
WHERE Order_ID = 3;

--  Handling NULLs (Set missing phone numbers to default value)
UPDATE Customers
SET Phone = '0000000000'
WHERE Phone IS NULL;

--  Insert with partial values (auto-handled by defaults)
INSERT INTO Products (Product_Name, Price)
VALUES ('Headphones', 1500);

--  Check final data
SELECT * FROM Customers;
SELECT * FROM Products;
SELECT * FROM Orders;
SELECT * FROM Payments;
