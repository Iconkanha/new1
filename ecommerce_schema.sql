-- 1. Create the database
CREATE DATABASE IF NOT EXISTS ecommerce;
USE ecommerce;

-- 2. Create `products` table
CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10,2) NOT NULL,
  description TEXT,
  image VARCHAR(255),
  category VARCHAR(100)
);

-- 3. Optional: Create `users` table (for login later)
CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  username VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL
);

-- 4. Optional: Create `orders` table (mock)
CREATE TABLE IF NOT EXISTS orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  user_id INT,
  total_price DECIMAL(10,2),
  order_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- 5. Insert sample products
INSERT INTO products (name, price, description, image, category) VALUES
('Smartphone', 19999.99, 'Smartphone with 64GB storage and dual camera.', 'phone.jpg', 'Electronics'),
('Running Shoes', 2999.99, 'Comfortable running shoes with great grip.', 'shoes.jpg', 'Footwear'),
('Digital Watch', 1499.50, 'Water-resistant digital watch with LED.', 'watch.jpg', 'Accessories'),
('Backpack', 999.00, 'Durable backpack for travel and school.', 'bag.jpg', 'Accessories'),
('Bluetooth Headphones', 2599.00, 'Wireless headphones with noise cancellation.', 'headphones.jpg', 'Electronics');