-- Create database
CREATE DATABASE IF NOT EXISTS hungry_hippo;

-- Use the database
USE hungry_hippo;

-- Create table with corrected field name
CREATE TABLE IF NOT EXISTS foods (
    id INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    name VARCHAR(255) NOT NULL,
    expiryDate DATE NOT NULL,
    createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    imageURL VARCHAR(255),
    recommendedForKid BOOLEAN,
    price DECIMAL(10, 2),
    category VARCHAR(255),
    ingredients TEXT,
    nutritionInfo TEXT
);

-- Insert sample data with working image sources
INSERT INTO foods (name, expiryDate, createdAt, updatedAt, imageURL, recommendedForKid, price, category, ingredients, nutritionInfo) VALUES
('Apple', '2024-09-01', NOW(), NOW(), 'https://images.pexels.com/photos/102104/pexels-photo-102104.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE, 0.50, 'Fruit', 'Apples', 'Calories: 52, Fat: 0.2g, Carbs: 14g'),
('Banana', '2024-08-20', NOW(), NOW(), 'https://images.pexels.com/photos/61127/pexels-photo-61127.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE, 0.30, 'Fruit', 'Bananas', 'Calories: 89, Fat: 0.3g, Carbs: 23g'),
('Carrot', '2024-10-01', NOW(), NOW(), 'https://images.pexels.com/photos/65174/pexels-photo-65174.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE, 0.40, 'Vegetable', 'Carrots', 'Calories: 41, Fat: 0.2g, Carbs: 10g'),
('Pizza', '2024-08-15', NOW(), NOW(), 'https://images.pexels.com/photos/1566837/pexels-photo-1566837.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE, 8.00, 'Fast Food', 'Flour, Cheese, Tomato Sauce', 'Calories: 285, Fat: 10g, Carbs: 36g'),
('Burger', '2024-08-25', NOW(), NOW(), 'https://images.pexels.com/photos/1639557/pexels-photo-1639557.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE, 5.00, 'Fast Food', 'Beef Patty, Bun, Lettuce, Tomato', 'Calories: 250, Fat: 9g, Carbs: 34g'),
('Milk', '2024-08-30', NOW(), NOW(), 'https://images.pexels.com/photos/248412/pexels-photo-248412.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE, 1.00, 'Dairy', 'Milk', 'Calories: 42, Fat: 1g, Carbs: 5g'),
('Yogurt', '2024-09-15', NOW(), NOW(), 'https://images.pexels.com/photos/414262/pexels-photo-414262.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE, 1.50, 'Dairy', 'Milk, Live Cultures', 'Calories: 59, Fat: 3g, Carbs: 4g'),
('Chicken Nuggets', '2024-09-10', NOW(), NOW(), 'https://images.pexels.com/photos/60616/fried-chicken-chicken-fried-crunchy-60616.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE, 6.00, 'Fast Food', 'Chicken, Bread Crumbs', 'Calories: 300, Fat: 15g, Carbs: 20g'),
('Pasta', '2024-09-20', NOW(), NOW(), 'https://images.pexels.com/photos/1437267/pexels-photo-1437267.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', FALSE, 2.50, 'Italian', 'Flour, Water', 'Calories: 131, Fat: 1g, Carbs: 25g'),
('Juice', '2024-08-18', NOW(), NOW(), 'https://images.pexels.com/photos/158053/fresh-orange-juice-squeezed-refreshing-citrus-158053.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2', TRUE, 2.00, 'Beverage', 'Fruit Juice', 'Calories: 45, Fat: 0g, Carbs: 11g');
