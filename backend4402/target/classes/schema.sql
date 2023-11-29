-- Example file that defines the schema for the database.
-- All relations will be defined here, like the one below.

CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    phone_number INT(10),
    customer_license_num INT(10)
);

-- CREATE TABLE employee (
--     employee_id INT AUTO_INCREMENT PRIMARY KEY,
--     first_name VARCHAR(50),
--     last_name VARCHAR(50),
--     role VARCHAR(50),
--     salary DECIMAL(10, 2)
-- );

-- CREATE TABLE reservation (
--     reservation_id INT AUTO_INCREMENT PRIMARY KEY,
--     customer_id INT(10),
--     employee_id INT(10),
--     vehicle_vin INT(10),
--     start_date VARCHAR(50),
--     end_date VARCHAR(50),
--     cost DECIMAL(10, 2)
-- );

-- CREATE TABLE vehicle (
--     vin INT AUTO_INCREMENT PRIMARY KEY,
--     license_id INT(10),
--     make VARCHAR(50),
--     model VARCHAR(50),
--     year INT(10),
--     reservation_id INT(10)
-- );

-- DEFINE YOUR TABLES HERE