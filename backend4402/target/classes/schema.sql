-- Example file that defines the schema for the database.
-- All relations will be defined here, like the one below.

CREATE TABLE customer (
        customer_id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        phone_number VARCHAR(20),
        customer_license_num VARCHAR(20)
);
CREATE TABLE employee (
        employee_id INT AUTO_INCREMENT PRIMARY KEY,
        first_name VARCHAR(50),
        last_name VARCHAR(50),
        role VARCHAR(50),
        salary DECIMAL(10, 2)
);
CREATE TABLE reservation (
        reservation_id INT AUTO_INCREMENT PRIMARY KEY,
        customer_id INT,
        employee_id INT,
        vehicle_vin INT,
        start_date VARCHAR(50),
        end_date VARCHAR(50),
        cost DECIMAL(10, 2)
);
CREATE TABLE vehicle (
        vin INT AUTO_INCREMENT PRIMARY KEY,
        license_id INT,
        make VARCHAR(50),
        model VARCHAR(50),
        "year" INT,
        reservation_id INT
);

-- DEFINE YOUR TABLES HERE