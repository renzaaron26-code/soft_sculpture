-- ============================================================================
-- SOFT SCULPTURE STORE - DATABASE SETUP
-- MySQL Database Schema for Fuzzy Wire Soft Sculpture E-Commerce
-- ============================================================================

-- Create Database
CREATE DATABASE IF NOT EXISTS soft_sculpture_db;
USE soft_sculpture_db;

-- ============================================================================
-- 1. USERS TABLE
-- Stores customer account information
-- ============================================================================
CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  email VARCHAR(255) UNIQUE NOT NULL,
  password_hash VARCHAR(255) NOT NULL,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  phone VARCHAR(20),
  profile_address TEXT,
  profile_city VARCHAR(100),
  profile_province VARCHAR(100),
  profile_postal_code VARCHAR(20),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_email (email),
  INDEX idx_created_at (created_at)
);

-- ============================================================================
-- 2. PRODUCTS TABLE
-- Stores product information
-- ============================================================================
CREATE TABLE IF NOT EXISTS products (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  category VARCHAR(50) NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  stock_quantity INT DEFAULT 0,
  rating DECIMAL(3, 2) DEFAULT 5.00,
  review_count INT DEFAULT 0,
  image_url VARCHAR(500),
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  INDEX idx_category (category),
  INDEX idx_price (price),
  INDEX idx_created_at (created_at)
);

-- ============================================================================
-- 3. ORDERS TABLE
-- Stores order information
-- ============================================================================
CREATE TABLE IF NOT EXISTS orders (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_number VARCHAR(50) UNIQUE NOT NULL,
  user_id INT,
  customer_email VARCHAR(255) NOT NULL,
  customer_first_name VARCHAR(100) NOT NULL,
  customer_last_name VARCHAR(100) NOT NULL,
  customer_phone VARCHAR(20) NOT NULL,
  shipping_address TEXT NOT NULL,
  shipping_city VARCHAR(100) NOT NULL,
  shipping_province VARCHAR(100) NOT NULL,
  shipping_postal_code VARCHAR(20) NOT NULL,
  subtotal DECIMAL(10, 2) NOT NULL,
  shipping_fee DECIMAL(10, 2) NOT NULL,
  tax DECIMAL(10, 2) NOT NULL,
  total_amount DECIMAL(10, 2) NOT NULL,
  payment_method VARCHAR(50) DEFAULT 'cod',
  status VARCHAR(50) DEFAULT 'pending',
  notes TEXT,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  FOREIGN KEY (user_id) REFERENCES users(id),
  INDEX idx_order_number (order_number),
  INDEX idx_user_id (user_id),
  INDEX idx_status (status),
  INDEX idx_created_at (created_at)
);

-- ============================================================================
-- 4. ORDER ITEMS TABLE
-- Stores individual items in each order
-- ============================================================================
CREATE TABLE IF NOT EXISTS order_items (
  id INT AUTO_INCREMENT PRIMARY KEY,
  order_id INT NOT NULL,
  product_id INT NOT NULL,
  product_name VARCHAR(255) NOT NULL,
  quantity INT NOT NULL,
  price DECIMAL(10, 2) NOT NULL,
  subtotal DECIMAL(10, 2) NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (order_id) REFERENCES orders(id) ON DELETE CASCADE,
  FOREIGN KEY (product_id) REFERENCES products(id),
  INDEX idx_order_id (order_id)
);

-- ============================================================================
-- 5. SHIPPING_ZONES TABLE
-- Stores shipping information for different regions
-- ============================================================================
CREATE TABLE IF NOT EXISTS shipping_zones (
  id INT AUTO_INCREMENT PRIMARY KEY,
  zone_name VARCHAR(100) NOT NULL,
  region VARCHAR(100) NOT NULL,
  shipping_fee DECIMAL(10, 2) NOT NULL,
  estimated_days INT NOT NULL,
  is_active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_zone_name (zone_name)
);

-- ============================================================================
-- 6. CONTACT MESSAGES TABLE
-- Stores contact form submissions
-- ============================================================================
CREATE TABLE IF NOT EXISTS contact_messages (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  subject VARCHAR(255) NOT NULL,
  message TEXT NOT NULL,
  status VARCHAR(50) DEFAULT 'new',
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  INDEX idx_email (email),
  INDEX idx_status (status)
);

-- ============================================================================
-- 7. PRODUCT REVIEWS TABLE
-- Stores customer reviews for products
-- ============================================================================
CREATE TABLE IF NOT EXISTS product_reviews (
  id INT AUTO_INCREMENT PRIMARY KEY,
  product_id INT NOT NULL,
  user_id INT,
  rating INT NOT NULL,
  review_text TEXT,
  is_verified_purchase BOOLEAN DEFAULT FALSE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (product_id) REFERENCES products(id) ON DELETE CASCADE,
  FOREIGN KEY (user_id) REFERENCES users(id),
  INDEX idx_product_id (product_id)
);

-- ============================================================================
-- INSERT SAMPLE DATA
-- ============================================================================

-- Insert sample products
INSERT INTO products (name, description, category, price, stock_quantity, rating) VALUES
('Pink Fuzzy Flower Bouquet', 'Beautiful pastel pink fuzzy wire flowers', 'flowers', 299.00, 50, 5.00),
('Rainbow Keychain Set', 'Colorful fuzzy wire keychains', 'keychains', 149.00, 100, 5.00),
('Cute Character Charm', 'Adorable pastel character charms', 'charms', 99.00, 75, 5.00),
('Pastel Flower Wall Decoration', 'Large fuzzy wire flower for room decoration', 'decorations', 399.00, 30, 5.00),
('Mini Succulent Plant', 'Cute fuzzy wire succulent plant', 'flowers', 179.00, 60, 5.00),
('Phone Charm Trio', 'Three cute phone hanging charms', 'charms', 249.00, 45, 5.00),
('Butterfly Decoration Set', 'Set of pastel butterfly decorations', 'decorations', 349.00, 25, 5.00),
('Heart Shaped Keychain', 'Pink heart-shaped fuzzy wire keychain', 'keychains', 129.00, 80, 5.00);

-- Insert sample shipping zones
INSERT INTO shipping_zones (zone_name, region, shipping_fee, estimated_days, is_active) VALUES
('Metro Manila', 'Metro Manila', 50.00, 3, TRUE),
('Nearby Provinces', 'NCR Adjacent', 150.00, 5, TRUE),
('Central Luzon', 'Central Luzon & CALABARZON', 200.00, 5, TRUE),
('Visayas', 'Visayas', 300.00, 7, TRUE),
('Mindanao', 'Mindanao', 350.00, 7, TRUE),
('Remote Areas', 'Remote Areas', 400.00, 10, TRUE);

-- ============================================================================
-- NOTES FOR IMPLEMENTATION:
-- ============================================================================
-- 1. User passwords should be hashed using bcrypt or similar before insertion
-- 2. Orders are created with status 'pending' initially
-- 3. Order status can be: pending, confirmed, shipped, delivered, cancelled
-- 4. Payment method is 'cod' (Cash on Delivery) for all orders
-- 5. All timestamps are in UTC by default
-- 6. Use prepared statements in your application to prevent SQL injection
-- 7. Implement proper indexing for frequently queried columns
-- 8. Use transactions when inserting orders with order items
