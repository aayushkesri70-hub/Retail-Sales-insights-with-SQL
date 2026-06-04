-- SQL project E-Commerce Sales Analysis & Customer Insights using SQL --

CREATE DATABASE Shopnix; 
USE Shopnix;

CREATE TABLE Customers(
	Customer_id INT PRIMARY KEY,
    Name VARCHAR(50),
    Email VARCHAR(100),
    City VARCHAR(40),
    Sign_up_date DATE 
);

CREATE TABLE Products(
	Product_id INT PRIMARY KEY,
    Product_name VARCHAR(50),
    Category VARCHAR(50),
    Price DECIMAL(10,2),
    Stock INT 
);

CREATE TABLE Orders(
	Order_id INT PRIMARY KEY, 
    Customer_id INT,
    Order_date DATE,
    Order_status VARCHAR(40),
    FOREIGN KEY (customer_id) REFERENCES customers (customer_id)
);

CREATE TABLE Order_items(
	Order_item_id INT PRIMARY KEY,
    Order_id INT,
    Product_id INT,
    Quantity INT,
    FOREIGN KEY (order_id) REFERENCES orders (order_id),
    FOREIGN KEY (product_id) REFERENCES products (product_id)
);

CREATE TABLE Payments(
	Payment_id INT PRIMARY KEY,
    Order_id INT,
    Payment_mode VARCHAR(30),
    Amount DECIMAL(10,2),
    Payment_date DATE,
    FOREIGN KEY (order_id) REFERENCES Orders (order_id)
);

INSERT INTO Customers 
(Customer_id, Name, Email, City, Sign_up_date) VALUES

(1, 'Amit Sharma', 'amit.sharma@gmail.com', 'Delhi', '2023-01-15'),
(2, 'Neha Verma', 'neha.verma@gmail.com', 'Mumbai', '2023-02-10'),
(3, 'Rahul Singh', 'rahul.singh@gmail.com', 'Lucknow', '2023-03-05'),
(4, 'Priya Mehta', 'priya.mehta@gmail.com', 'Ahmedabad', '2023-01-25'),
(5, 'Karan Patel', 'karan.patel@gmail.com', 'Surat', '2023-04-12'),
(6, 'Anjali Gupta', 'anjali.gupta@gmail.com', 'Delhi', '2023-02-18'),
(7, 'Rohit Kumar', 'rohit.kumar@gmail.com', 'Patna', '2023-03-22'),
(8, 'Sneha Iyer', 'sneha.iyer@gmail.com', 'Chennai', '2023-01-30'),
(9, 'Vikas Yadav', 'vikas.yadav@gmail.com', 'Noida', '2023-05-14'),
(10, 'Pooja Singh', 'pooja.singh@gmail.com', 'Kanpur', '2023-06-01'),

(11, 'Arjun Kapoor', 'arjun.kapoor@gmail.com', 'Mumbai', '2023-02-05'),
(12, 'Meera Nair', 'meera.nair@gmail.com', 'Kochi', '2023-03-11'),
(13, 'Suresh Reddy', 'suresh.reddy@gmail.com', 'Hyderabad', '2023-04-08'),
(14, 'Kavita Joshi', 'kavita.joshi@gmail.com', 'Pune', '2023-01-19'),
(15, 'Manish Agarwal', 'manish.agarwal@gmail.com', 'Jaipur', '2023-02-27'),
(16, 'Divya Sharma', 'divya.sharma@gmail.com', 'Delhi', '2023-03-15'),
(17, 'Nikhil Jain', 'nikhil.jain@gmail.com', 'Indore', '2023-04-21'),
(18, 'Ritu Saxena', 'ritu.saxena@gmail.com', 'Bhopal', '2023-05-09'),
(19, 'Akash Mishra', 'akash.mishra@gmail.com', 'Varanasi', '2023-06-18'),
(20, 'Simran Kaur', 'simran.kaur@gmail.com', 'Chandigarh', '2023-01-28'),

(21, 'Deepak Chauhan', 'deepak.chauhan@gmail.com', 'Dehradun', '2023-02-14'),
(22, 'Ankit Gupta', 'ankit.gupta@gmail.com', 'Delhi', '2023-03-03'),
(23, 'Shreya Bose', 'shreya.bose@gmail.com', 'Kolkata', '2023-04-17'),
(24, 'Harsh Vardhan', 'harsh.vardhan@gmail.com', 'Patna', '2023-05-25'),
(25, 'Tanya Arora', 'tanya.arora@gmail.com', 'Ludhiana', '2023-06-02'),
(26, 'Mohit Bansal', 'mohit.bansal@gmail.com', 'Gurgaon', '2023-01-12'),
(27, 'Isha Malhotra', 'isha.malhotra@gmail.com', 'Delhi', '2023-02-20'),
(28, 'Raj Malhotra', 'raj.malhotra@gmail.com', 'Amritsar', '2023-03-28'),
(29, 'Kriti Sanon', 'kriti.sanon@gmail.com', 'Mumbai', '2023-04-05'),
(30, 'Aditya Roy', 'aditya.roy@gmail.com', 'Pune', '2023-05-11'),

(31, 'Varun Dhawan', 'varun.dhawan@gmail.com', 'Mumbai', '2023-06-19'),
(32, 'Alia Bhatt', 'alia.bhatt@gmail.com', 'Mumbai', '2023-01-22'),
(33, 'Ranveer Singh', 'ranveer.singh@gmail.com', 'Mumbai', '2023-02-16'),
(34, 'Deepika Padukone', 'deepika.padukone@gmail.com', 'Bangalore', '2023-03-09'),
(35, 'Shahid Kapoor', 'shahid.kapoor@gmail.com', 'Delhi', '2023-04-14'),
(36, 'Kiara Advani', 'kiara.advani@gmail.com', 'Mumbai', '2023-05-20'),
(37, 'Ayushmann Khurrana', 'ayushmann.khurrana@gmail.com', 'Chandigarh', '2023-06-07'),
(38, 'Taapsee Pannu', 'taapsee.pannu@gmail.com', 'Delhi', '2023-01-17'),
(39, 'Rajkummar Rao', 'rajkummar.rao@gmail.com', 'Gurgaon', '2023-02-24'),
(40, 'Bhumi Pednekar', 'bhumi.pednekar@gmail.com', 'Mumbai', '2023-03-30'),

(41, 'Siddharth Malhotra', 'siddharth.malhotra@gmail.com', 'Delhi', '2023-04-22'),
(42, 'Parineeti Chopra', 'parineeti.chopra@gmail.com', 'Ambala', '2023-05-06'),
(43, 'Kartik Aaryan', 'kartik.aaryan@gmail.com', 'Gwalior', '2023-06-12'),
(44, 'Sara Ali Khan', 'sara.ali@gmail.com', 'Mumbai', '2023-01-29'),
(45, 'Janhvi Kapoor', 'janhvi.kapoor@gmail.com', 'Mumbai', '2023-02-08'),
(46, 'Irrfan Khan', 'irrfan.khan@gmail.com', 'Jaipur', '2023-03-19'),
(47, 'Nawazuddin Siddiqui', 'nawazuddin@gmail.com', 'Muzaffarnagar', '2023-04-27'),
(48, 'Pankaj Tripathi', 'pankaj.tripathi@gmail.com', 'Bhopal', '2023-05-15'),
(49, 'Vicky Kaushal', 'vicky.kaushal@gmail.com', 'Mumbai', '2023-06-03'),
(50, 'Kangana Ranaut', 'kangana.ranaut@gmail.com', 'Manali', '2023-01-11');


INSERT INTO Products 
(Product_id, Product_name, Category, Price, Stock) VALUES
(1, 'iPhone 14', 'Electronics', 79999.00, 25),
(2, 'Samsung Galaxy S21', 'Electronics', 69999.00, 30),
(3, 'Dell Laptop', 'Electronics', 55999.00, 15),
(4, 'HP Laptop', 'Electronics', 52999.00, 20),
(5, 'Sony Headphones', 'Electronics', 4999.00, 50),
(6, 'Boat Earbuds', 'Electronics', 1999.00, 80),
(7, 'Smart Watch', 'Electronics', 2999.00, 60),
(8, 'Bluetooth Speaker', 'Electronics', 2499.00, 45),
(9, 'LED TV 42 Inch', 'Electronics', 32999.00, 10),
(10, 'Gaming Mouse', 'Electronics', 1499.00, 70),

(11, 'Men T-Shirt', 'Clothing', 599.00, 100),
(12, 'Women Kurti', 'Clothing', 899.00, 90),
(13, 'Jeans', 'Clothing', 1499.00, 75),
(14, 'Jacket', 'Clothing', 2499.00, 40),
(15, 'Shirt', 'Clothing', 999.00, 85),
(16, 'Saree', 'Clothing', 1999.00, 35),
(17, 'Kids Dress', 'Clothing', 799.00, 60),
(18, 'Hoodie', 'Clothing', 1799.00, 50),
(19, 'Track Pants', 'Clothing', 1299.00, 70),
(20, 'Shorts', 'Clothing', 699.00, 65),

(21, 'Rice 10kg', 'Groceries', 899.00, 120),
(22, 'Wheat Flour 5kg', 'Groceries', 299.00, 140),
(23, 'Cooking Oil 1L', 'Groceries', 199.00, 130),
(24, 'Sugar 1kg', 'Groceries', 49.00, 150),
(25, 'Salt 1kg', 'Groceries', 20.00, 200),
(26, 'Milk 1L', 'Groceries', 60.00, 180),
(27, 'Tea Powder', 'Groceries', 250.00, 90),
(28, 'Coffee Powder', 'Groceries', 350.00, 80),
(29, 'Biscuits Pack', 'Groceries', 30.00, 160),
(30, 'Noodles Pack', 'Groceries', 20.00, 170),

(31, 'Office Chair', 'Furniture', 4999.00, 25),
(32, 'Study Table', 'Furniture', 6999.00, 20),
(33, 'Sofa Set', 'Furniture', 25999.00, 8),
(34, 'Bed King Size', 'Furniture', 18999.00, 10),
(35, 'Wardrobe', 'Furniture', 14999.00, 12),
(36, 'Dining Table', 'Furniture', 11999.00, 15),
(37, 'Bookshelf', 'Furniture', 3999.00, 30),
(38, 'TV Unit', 'Furniture', 5999.00, 18),
(39, 'Plastic Chair', 'Furniture', 799.00, 100),
(40, 'Mattress', 'Furniture', 8999.00, 22),

(41, 'Face Wash', 'Beauty', 199.00, 110),
(42, 'Shampoo', 'Beauty', 299.00, 95),
(43, 'Conditioner', 'Beauty', 349.00, 85),
(44, 'Body Lotion', 'Beauty', 399.00, 75),
(45, 'Perfume', 'Beauty', 1499.00, 40),
(46, 'Lipstick', 'Beauty', 499.00, 60),
(47, 'Foundation', 'Beauty', 699.00, 50),
(48, 'Face Cream', 'Beauty', 299.00, 90),
(49, 'Hair Oil', 'Beauty', 199.00, 100),
(50, 'Deodorant', 'Beauty', 249.00, 80),

(51, 'Cricket Bat', 'Sports', 2499.00, 35),
(52, 'Football', 'Sports', 799.00, 60),
(53, 'Badminton Racket', 'Sports', 1499.00, 45),
(54, 'Yoga Mat', 'Sports', 599.00, 70),
(55, 'Dumbbells Set', 'Sports', 1999.00, 30),
(56, 'Skipping Rope', 'Sports', 199.00, 90),
(57, 'Tennis Ball Pack', 'Sports', 299.00, 100),
(58, 'Gym Gloves', 'Sports', 399.00, 65),
(59, 'Helmet', 'Sports', 899.00, 40),
(60, 'Cycling Pump', 'Sports', 499.00, 55);

INSERT INTO Orders 
(Order_id, Customer_id, Order_date, Order_status) VALUES
(1, 1, '2023-01-20', 'Delivered'),
(2, 2, '2023-01-22', 'Shipped'),
(3, 3, '2023-01-25', 'Cancelled'),
(4, 4, '2023-01-28', 'Delivered'),
(5, 5, '2023-02-01', 'Pending'),
(6, 6, '2023-02-03', 'Delivered'),
(7, 7, '2023-02-05', 'Shipped'),
(8, 8, '2023-02-07', 'Delivered'),
(9, 9, '2023-02-10', 'Cancelled'),
(10, 10, '2023-02-12', 'Delivered'),

(11, 11, '2023-02-15', 'Pending'),
(12, 12, '2023-02-18', 'Delivered'),
(13, 13, '2023-02-20', 'Shipped'),
(14, 14, '2023-02-22', 'Delivered'),
(15, 15, '2023-02-25', 'Cancelled'),
(16, 16, '2023-02-28', 'Delivered'),
(17, 17, '2023-03-02', 'Pending'),
(18, 18, '2023-03-04', 'Delivered'),
(19, 19, '2023-03-06', 'Shipped'),
(20, 20, '2023-03-08', 'Delivered'),

(21, 21, '2023-03-10', 'Cancelled'),
(22, 22, '2023-03-12', 'Delivered'),
(23, 23, '2023-03-14', 'Pending'),
(24, 24, '2023-03-16', 'Delivered'),
(25, 25, '2023-03-18', 'Shipped'),
(26, 26, '2023-03-20', 'Delivered'),
(27, 27, '2023-03-22', 'Cancelled'),
(28, 28, '2023-03-24', 'Delivered'),
(29, 29, '2023-03-26', 'Pending'),
(30, 30, '2023-03-28', 'Delivered'),

(31, 31, '2023-04-01', 'Shipped'),
(32, 32, '2023-04-03', 'Delivered'),
(33, 33, '2023-04-05', 'Cancelled'),
(34, 34, '2023-04-07', 'Delivered'),
(35, 35, '2023-04-09', 'Pending'),
(36, 36, '2023-04-11', 'Delivered'),
(37, 37, '2023-04-13', 'Shipped'),
(38, 38, '2023-04-15', 'Delivered'),
(39, 39, '2023-04-17', 'Cancelled'),
(40, 40, '2023-04-19', 'Delivered'),

(41, 41, '2023-04-21', 'Pending'),
(42, 42, '2023-04-23', 'Delivered'),
(43, 43, '2023-04-25', 'Shipped'),
(44, 44, '2023-04-27', 'Delivered'),
(45, 45, '2023-04-29', 'Cancelled'),
(46, 46, '2023-05-01', 'Delivered'),
(47, 47, '2023-05-03', 'Pending'),
(48, 48, '2023-05-05', 'Delivered'),
(49, 49, '2023-05-07', 'Shipped'),
(50, 50, '2023-05-09', 'Delivered'),
(51, 1, '2023-05-11', 'Delivered'),
(52, 2, '2023-05-13', 'Cancelled'),
(53, 3, '2023-05-15', 'Delivered'),
(54, 4, '2023-05-17', 'Shipped'),
(55, 5, '2023-05-19', 'Delivered'),
(56, 6, '2023-05-21', 'Pending'),
(57, 7, '2023-05-23', 'Delivered'),
(58, 8, '2023-05-25', 'Cancelled'),
(59, 9, '2023-05-27', 'Delivered'),
(60, 10, '2023-05-29', 'Shipped'),

(61, 11, '2023-06-01', 'Delivered'),
(62, 12, '2023-06-03', 'Pending'),
(63, 13, '2023-06-05', 'Delivered'),
(64, 14, '2023-06-07', 'Cancelled'),
(65, 15, '2023-06-09', 'Delivered'),
(66, 16, '2023-06-11', 'Shipped'),
(67, 17, '2023-06-13', 'Delivered'),
(68, 18, '2023-06-15', 'Pending'),
(69, 19, '2023-06-17', 'Delivered'),
(70, 20, '2023-06-19', 'Cancelled'),

(71, 21, '2023-06-21', 'Delivered'),
(72, 22, '2023-06-23', 'Shipped'),
(73, 23, '2023-06-25', 'Delivered'),
(74, 24, '2023-06-27', 'Pending'),
(75, 25, '2023-06-29', 'Delivered'),
(76, 26, '2023-07-01', 'Cancelled'),
(77, 27, '2023-07-03', 'Delivered'),
(78, 28, '2023-07-05', 'Shipped'),
(79, 29, '2023-07-07', 'Delivered'),
(80, 30, '2023-07-09', 'Pending'),

(81, 31, '2023-07-11', 'Delivered'),
(82, 32, '2023-07-13', 'Cancelled'),
(83, 33, '2023-07-15', 'Delivered'),
(84, 34, '2023-07-17', 'Shipped'),
(85, 35, '2023-07-19', 'Delivered'),
(86, 36, '2023-07-21', 'Pending'),
(87, 37, '2023-07-23', 'Delivered'),
(88, 38, '2023-07-25', 'Cancelled'),
(89, 39, '2023-07-27', 'Delivered'),
(90, 40, '2023-07-29', 'Shipped'),

(91, 41, '2023-08-01', 'Delivered'),
(92, 42, '2023-08-03', 'Pending'),
(93, 43, '2023-08-05', 'Delivered'),
(94, 44, '2023-08-07', 'Cancelled'),
(95, 45, '2023-08-09', 'Delivered'),
(96, 46, '2023-08-11', 'Shipped'),
(97, 47, '2023-08-13', 'Delivered'),
(98, 48, '2023-08-15', 'Pending'),
(99, 49, '2023-08-17', 'Delivered'),
(100, 50, '2023-08-19', 'Cancelled');


INSERT INTO Order_items 
(Order_item_id, Order_id, Product_id, Quantity) VALUES
(1, 1, 1, 1),
(2, 1, 5, 2),
(3, 2, 2, 1),
(4, 2, 6, 1),
(5, 3, 10, 1),
(6, 4, 3, 1),
(7, 4, 7, 2),
(8, 5, 21, 3),
(9, 6, 4, 1),
(10, 6, 8, 1),
(11, 7, 9, 1),
(12, 8, 11, 2),
(13, 8, 12, 1),
(14, 9, 13, 1),
(15, 10, 14, 1),
(16, 10, 15, 2),
(17, 11, 16, 1),
(18, 12, 17, 2),
(19, 12, 18, 1),
(20, 13, 19, 1),
(21, 14, 20, 2),
(22, 15, 22, 3),
(23, 16, 23, 2),
(24, 17, 24, 4),
(25, 18, 25, 2),
(26, 19, 26, 3),
(27, 20, 27, 1),
(28, 20, 28, 1),
(29, 21, 29, 5),
(30, 22, 30, 4),
(31, 23, 31, 1),
(32, 24, 32, 1),
(33, 25, 33, 1),
(34, 26, 34, 1),
(35, 27, 35, 1),
(36, 28, 36, 1),
(37, 29, 41, 2),
(38, 30, 45, 1),
(39, 31, 50, 2),
(40, 32, 55, 1);


INSERT INTO Payments
(Payment_id, Order_id, Payment_mode, Amount, Payment_date) VALUES
(1, 1, 'UPI', 89997.00, '2023-01-21'),
(2, 2, 'Credit Card', 71998.00, '2023-01-23'),
(3, 3, 'COD', 1499.00, '2023-01-26'),
(4, 4, 'Net Banking', 60998.00, '2023-01-29'),
(5, 5, 'UPI', 2697.00, '2023-02-02'),
(6, 6, 'Credit Card', 58498.00, '2023-02-04'),
(7, 7, 'UPI', 32999.00, '2023-02-06'),
(8, 8, 'Debit Card', 1797.00, '2023-02-08'),
(9, 9, 'COD', 1499.00, '2023-02-11'),
(10, 10, 'UPI', 3497.00, '2023-02-13'),
(11, 11, 'Net Banking', 1999.00, '2023-02-16'),
(12, 12, 'UPI', 2598.00, '2023-02-19'),
(13, 13, 'Credit Card', 1299.00, '2023-02-21'),
(14, 14, 'Debit Card', 2598.00, '2023-02-23'),
(15, 15, 'COD', 1499.00, '2023-02-26'),
(16, 16, 'UPI', 1799.00, '2023-03-01'),
(17, 17, 'Net Banking', 499.00, '2023-03-03'),
(18, 18, 'UPI', 2498.00, '2023-03-05'),
(19, 19, 'Credit Card', 1299.00, '2023-03-07'),
(20, 20, 'UPI', 2598.00, '2023-03-09'),
(21, 21, 'COD', 30.00, '2023-03-11'),
(22, 22, 'UPI', 120.00, '2023-03-13'),
(23, 23, 'Debit Card', 199.00, '2023-03-15'),
(24, 24, 'UPI', 60.00, '2023-03-17'),
(25, 25, 'Net Banking', 250.00, '2023-03-19'),
(26, 26, 'UPI', 350.00, '2023-03-21'),
(27, 27, 'COD', 30.00, '2023-03-23'),
(28, 28, 'UPI', 80.00, '2023-03-25'),
(29, 29, 'Debit Card', 150.00, '2023-03-27'),
(30, 30, 'UPI', 200.00, '2023-03-29'),
(31, 31, 'Credit Card', 4999.00, '2023-04-02'),
(32, 32, 'UPI', 6999.00, '2023-04-04'),
(33, 33, 'COD', 25999.00, '2023-04-06'),
(34, 34, 'UPI', 18999.00, '2023-04-08'),
(35, 35, 'Debit Card', 14999.00, '2023-04-10'),
(36, 36, 'UPI', 11999.00, '2023-04-12'),
(37, 37, 'Net Banking', 3999.00, '2023-04-14'),
(38, 38, 'UPI', 5999.00, '2023-04-16'),
(39, 39, 'COD', 799.00, '2023-04-18'),
(40, 40, 'UPI', 8999.00, '2023-04-20'),
(41, 41, 'Debit Card', 199.00, '2023-04-22'),
(42, 42, 'UPI', 299.00, '2023-04-24'),
(43, 43, 'Credit Card', 349.00, '2023-04-26'),
(44, 44, 'UPI', 399.00, '2023-04-28'),
(45, 45, 'COD', 1499.00, '2023-04-30'),
(46, 46, 'UPI', 499.00, '2023-05-02'),
(47, 47, 'Net Banking', 699.00, '2023-05-04'),
(48, 48, 'UPI', 299.00, '2023-05-06'),
(49, 49, 'Credit Card', 199.00, '2023-05-08'),
(50, 50, 'UPI', 249.00, '2023-05-10'),
(51, 51, 'UPI', 79999.00, '2023-05-12'),
(52, 52, 'COD', 69999.00, '2023-05-14'),
(53, 53, 'UPI', 55999.00, '2023-05-16'),
(54, 54, 'Credit Card', 52999.00, '2023-05-18'),
(55, 55, 'UPI', 4999.00, '2023-05-20'),
(56, 56, 'Net Banking', 1999.00, '2023-05-22'),
(57, 57, 'UPI', 2999.00, '2023-05-24'),
(58, 58, 'COD', 2499.00, '2023-05-26'),
(59, 59, 'UPI', 32999.00, '2023-05-28'),
(60, 60, 'Credit Card', 1499.00, '2023-05-30'),
(61, 61, 'UPI', 599.00, '2023-06-02'),
(62, 62, 'Debit Card', 899.00, '2023-06-04'),
(63, 63, 'UPI', 1499.00, '2023-06-06'),
(64, 64, 'COD', 2499.00, '2023-06-08'),
(65, 65, 'UPI', 999.00, '2023-06-10'),
(66, 66, 'Credit Card', 1999.00, '2023-06-12'),
(67, 67, 'UPI', 799.00, '2023-06-14'),
(68, 68, 'Net Banking', 1799.00, '2023-06-16'),
(69, 69, 'UPI', 1299.00, '2023-06-18'),
(70, 70, 'COD', 699.00, '2023-06-20'),
(71, 71, 'UPI', 899.00, '2023-06-22'),
(72, 72, 'Credit Card', 299.00, '2023-06-24'),
(73, 73, 'UPI', 199.00, '2023-06-26'),
(74, 74, 'Debit Card', 49.00, '2023-06-28'),
(75, 75, 'UPI', 20.00, '2023-06-30'),
(76, 76, 'COD', 60.00, '2023-07-02'),
(77, 77, 'UPI', 250.00, '2023-07-04'),
(78, 78, 'Net Banking', 350.00, '2023-07-06'),
(79, 79, 'UPI', 30.00, '2023-07-08'),
(80, 80, 'Credit Card', 20.00, '2023-07-10'),
(81, 81, 'UPI', 4999.00, '2023-07-12'),
(82, 82, 'COD', 6999.00, '2023-07-14'),
(83, 83, 'UPI', 25999.00, '2023-07-16'),
(84, 84, 'Credit Card', 18999.00, '2023-07-18'),
(85, 85, 'UPI', 14999.00, '2023-07-20'),
(86, 86, 'Net Banking', 11999.00, '2023-07-22'),
(87, 87, 'UPI', 3999.00, '2023-07-24'),
(88, 88, 'COD', 5999.00, '2023-07-26'),
(89, 89, 'UPI', 799.00, '2023-07-28'),
(90, 90, 'Credit Card', 8999.00, '2023-07-30'),
(91, 91, 'UPI', 199.00, '2023-08-02'),
(92, 92, 'Debit Card', 299.00, '2023-08-04'),
(93, 93, 'UPI', 349.00, '2023-08-06'),
(94, 94, 'COD', 399.00, '2023-08-08'),
(95, 95, 'UPI', 1499.00, '2023-08-10'),
(96, 96, 'Credit Card', 499.00, '2023-08-12'),
(97, 97, 'UPI', 699.00, '2023-08-14'),
(98, 98, 'Net Banking', 299.00, '2023-08-16'),
(99, 99, 'UPI', 199.00, '2023-08-18'),
(100, 100, 'COD', 249.00, '2023-08-20');

SELECT * FROM customers;

SELECT * FROM order_items;

SELECT * FROM orders;

SELECT * FROM payments;

SELECT * FROM products;

-- 1. Revenue & Business Performance --

-- Q.1 What is the total revenue generated?

SELECT SUM(oi.quantity * p.price) AS Total_revenue FROM Order_items oi LEFT JOIN Products p ON oi.Product_id = p.Product_id;

-- Q.2 What is the monthly revenue trend?

SELECT DATE_FORMAT(Payment_date, "%y-%m") AS month, SUM(amount) AS Revenue FROM Payments GROUP BY month;

-- Q.3 Which category generates the highest revenue?

SELECT p.Category, SUM(oi.quantity * p.price) AS Highest_revenue FROM Products p 
LEFT JOIN Order_items oi ON p.product_id = oi.product_id GROUP BY p.category;


-- Q.5 Which top 5 products generate the most revenue?

SELECT p.product_id, p.product_name, SUM(p.price * oi.quantity) AS High_revenue_product FROM products p 
LEFT JOIN order_items oi ON p.product_id = oi.product_id GROUP BY product_id, product_name 
ORDER BY High_revenue_product DESC LIMIT 5;

-- Q6. Who are the top 5 customers by total spending?

SELECT c.customer_id, c.name, SUM(p.Amount) AS Total_spend FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON p.order_id = o.order_id 
GROUP BY c.customer_id, c.name 
ORDER BY Total_spend DESC LIMIT 5;

-- Q.7 Which customers have placed more than 3 orders?

SELECT c.customer_id, c.name, COUNT(*) AS order_place FROM orders o 
JOIN customers c ON c.customer_id = o.customer_id GROUP BY c.customer_id, c.name HAVING COUNT(*) > 3;

-- Q.8 Which city has the highest number of customers?

SELECT city, COUNT(*) AS No_of_customer FROM customers GROUP BY city ORDER BY No_of_customer DESC LIMIT 1;

-- Q.9 Find inactive customers (no orders placed)

SELECT c.customer_id, c.name FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id WHERE o.order_id IS NULL;

-- Q.10 How many orders are Delivered vs Cancelled vs Pending?

SELECT order_status, count(*) AS Total_orders FROM orders GROUP BY order_status;

-- Q.11 Which day/month has the highest number of orders?

SELECT o.order_date, COUNT(*) AS number_of_order FROM orders o GROUP BY o.order_date ORDER BY number_of_order DESC LIMIT 1;

-- Q.12 What is the average number of items per order?


SELECT oi.order_id, SUM(oi.quantity * p.price) AS High_order_value FROM order_items oi 
LEFT JOIN products p ON p.product_id = oi.product_id 
GROUP BY oi.order_id HAVING High_order_value > 50000;

-- Q.14 Which products are low in stock (<20 units)?

SELECT product_id, product_name, stock FROM products WHERE stock < 20;

-- Q.15 Which category has the highest number of products sold?

SELECT p.category, SUM(oi.quantity) AS Total_products_sold FROM order_items oi 
JOIN products p ON oi.product_id = p.product_id GROUP BY p.category ORDER BY Total_products_sold DESC LIMIT 1;

-- Q.16 What is the most frequently purchased product?

SELECT p.product_id, p.product_name, SUM(oi.quantity) AS Most_purchase_product FROM products p 
JOIN order_items oi ON p.product_id = oi.product_id 
GROUP BY p.product_id, p.product_name ORDER BY Most_purchase_product DESC LIMIT 1;

-- Q.17 Find products that are never ordered

SELECT p.product_id, p.product_name, p.category, p.price FROM products p
LEFT JOIN order_items oi ON p.product_id = oi.product_id WHERE oi.product_id IS NULL;

-- Q.18 What is the average price per category?

SELECT category, AVG(price) AS Avg_price FROM products GROUP BY category;

-- Q.19 Which payment method is used the most?

SELECT payment_mode, COUNT(*) AS Total_payment FROM payments GROUP BY payment_mode ORDER BY Total_payment DESC LIMIT 1;

-- Q.20 What is the total revenue by payment mode?

SELECT py.payment_mode, SUM(p.price * oi.quantity) AS Total_revenue FROM products p 
JOIN order_items oi ON p.product_id = oi.product_id
JOIN payments py ON py.order_id = oi.order_id
GROUP BY py.payment_mode;

-- Q.22 Identify failed business: cancelled orders but payment done

SELECT o.order_id, o.order_status, p.payment_mode, p.amount, p.payment_date FROM orders o 
JOIN payments p ON p.order_id = o.order_id WHERE o.order_status = "cancelled";

-- Q.23 Identify customer lifetime value (CLV)

SELECT c.customer_id, c.name, SUM(p.amount) AS customer_lifetime_value FROM customers c 
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON p.order_id = o.order_id 
GROUP BY c.customer_id, c.name
ORDER BY customer_lifetime_value DESC;

-- Q.24 Get customers who belong to "Delhi"  

SELECT * FROM customers WHERE city = "Delhi";

-- Q.25 Display orders with status "Delivered"  

SELECT order_id, order_date, order_status FROM orders WHERE order_status = "Delivered";

-- Q.26 Find products with price between 500 and 2000  

SELECT product_id, product_name, price FROM products WHERE price BETWEEN 500 AND 2000;

-- Q.27 Show payments made using "UPI" 

SELECT payment_id, payment_mode, amount FROM payments WHERE payment_mode = "UPI";
 
-- Q.28 Get orders placed after the year 2023. 

SELECT * FROM orders WHERE order_date > "2023-12-31";

-- Q.29 Count number of orders per customer (GROUP BY)  

SELECT c.customer_id, c.name, COUNT(*) AS total_orders FROM orders o 
JOIN customers c ON c.customer_id = o.customer_id GROUP BY c.customer_id, c.name;

-- Q.30 Calculate total quantity sold per product  

SELECT p.product_id, p.product_name, SUM(oi.quantity) AS Total_quantity FROM products p 
JOIN order_items oi ON p.product_id = oi.product_id GROUP BY p.product_id, p.product_name;


-- Q.31 Find total revenue per category  

SELECT p.category, SUM(oi.quantity * p.price) AS Total_revenue FROM products p 
JOIN order_items oi ON p.product_id = oi.product_id GROUP BY p.category;

-- Q.32 Find the order with the highest payment  

SELECT o.order_id, o.order_date, sum(p.amount) AS Highest_payment FROM  orders o
JOIN payments p ON p.order_id = o.order_id GROUP BY o.order_id, o.order_date ORDER BY Highest_payment DESC LIMIT 1;

-- Q.33 Calculate average product price category-wise

SELECT category, AVG(price) FROM products GROUP BY category; 

-- Q.34 Top 5 highest paying customers  

SELECT c.customer_id, c.name, SUM(amount) AS High_paying_customer FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN payments p ON o.order_id = p.order_id
GROUP BY c.customer_id, c.name 
ORDER BY High_paying_customer DESC LIMIT 5;

-- Q.35 Most sold product  

SELECT p.product_id, p.product_name, SUM(oi.quantity) AS Most_sold_product FROM products p 
JOIN order_items oi ON p.product_id = oi.product_id
GROUP BY product_id, product_name
ORDER BY Most_sold_product DESC LIMIT 1; 

-- Q.36 Find customers who never placed any order  

SELECT c.customer_id, c.name FROM customers c LEFT JOIN orders o ON c.customer_id = o.customer_id WHERE o.order_id IS NULL;

-- Q.37 List all pending orders  

SELECT order_id, order_date, order_status FROM orders WHERE order_status = "pending";


-- Q.38 Month-wise total sales 

SELECT DATE_FORMAT(o.order_date, '%Y-%m') AS Month_wise, SUM(oi.quantity * p.price) AS Total_sales FROM products p 
JOIN order_items oi ON p.product_id = oi.product_id
JOIN orders o ON o.order_id = oi.order_id
GROUP BY o.order_date
ORDER BY Month_wise;

-- Q.39 Calculate total spending of each customer 

SELECT c.customer_id, c.name, SUM(p.price * oi.quantity) AS Total_spending FROM products p 
JOIN order_items oi ON p.product_id = oi.product_id 
JOIN orders o ON o.order_id = oi.order_id
JOIN customers c ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.name;
 
-- Q.40 Find customers who placed more than 2 orders 

SELECT c.customer_id, c.name, COUNT(*) AS No_of_order FROM orders o 
JOIN customers c ON c.customer_id = o.customer_id GROUP BY c.customer_id, c.name 
HAVING COUNT(*) > 2;