create database Rental_Car_Management;
use Rental_Car_Management;

CREATE TABLE Employees (
 employee_id INT PRIMARY KEY,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 email VARCHAR(100),
 phone VARCHAR(20),
 hire_date DATE,
 position VARCHAR(50)
);

CREATE TABLE Customers (
 customer_id INT PRIMARY KEY,
 first_name VARCHAR(50) NOT NULL,
 last_name VARCHAR(50) NOT NULL,
 email VARCHAR(100),
 phone VARCHAR(20),
 address VARCHAR(255)
);

CREATE TABLE Vehicles (
 vehicle_id INT PRIMARY KEY,
 brand VARCHAR(50) NOT NULL,
 model VARCHAR(50) NOT NULL,
 year INT,
 color VARCHAR(50),
 mileage INT,
 status ENUM('available', 'rented', 'maintenance') DEFAULT 'available'
);

CREATE TABLE Rentals (
 rental_id INT PRIMARY KEY,
 customer_id INT,
 vehicle_id INT,
 rental_start_date DATE,
 rental_end_date DATE,
 total_cost float,
 status ENUM('active', 'completed', 'cancelled') DEFAULT 'active'
);

CREATE TABLE Payments (
 payment_id INT PRIMARY KEY,
 rental_id INT,
 payment_date DATE,
 amount float,
 payment_method VARCHAR(50)

);

CREATE TABLE VehicleTypes (
 type_id INT PRIMARY KEY,
 type_name VARCHAR(50) NOT NULL
);

CREATE TABLE Locations (
 location_id INT PRIMARY KEY,
 location_name VARCHAR(100) NOT NULL,
 address VARCHAR(255),
 city VARCHAR(50),
 state VARCHAR(50),
 postal_code VARCHAR(20)
);

CREATE TABLE RentalInsurance (
 insurance_id INT PRIMARY KEY,
 rental_id INT,
 insurance_type VARCHAR(50),
 coverage_amount float
);

CREATE TABLE ProfitLoss (
 entry_id INT AUTO_INCREMENT PRIMARY KEY,
 transaction_date DATE,
 description VARCHAR(255),
 income float,
 expense float
);

CREATE TABLE Reviews (
 review_id INT PRIMARY KEY,
 product_id INT,
 user_id INT,
 rating INT,
 review_text TEXT,
 review_date DATE
);